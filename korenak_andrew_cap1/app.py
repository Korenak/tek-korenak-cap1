import os
import config
from flask import Flask, render_template, url_for, redirect, flash
from flask_sqlalchemy import *
from sqlalchemy import *
from forms import SubmitForm, DelForm
import pymysql

basedir = os.path.abspath(os.path.dirname(__file__))
app = Flask(__name__)
app.config['SECRET_KEY'] = config.key
'''
values stored in config.py
'''
# MySQL connection string
conn= "mysql+pymysql://{0}:{1}@{2}/{3}".format(config.username, config.password, config.host, config.schema)
app.config['SQLALCHEMY_DATABASE_URI'] = conn
# less typing for later Hurrah!
db = SQLAlchemy(app)


#class for sitesales table generation
class sitesales(db.Model):
    __tablename__ = 'sitesales'


    id = db.Column(db.Integer,primary_key = True)
    sales_year = db.Column(db.Integer)
    sales_week = db.Column(db.Integer)
    sales_team= db.Column(db.Text)
    prod_code= db.Column(db.Text)
    prod_sold = db.Column(db.Integer)
    esp_code= db.Column(db.Text)
    esp_sold= db.Column(db.Integer)
# Stretch goal: foreign keys
#
    def __init__(self,id,sales_year,sales_week,sales_team,prod_code,prod_sold,esp_code,esp_sold):
        self.sales_year = sales_year
        self.sales_week = sales_week
        self.sales_team = sales_team
        self.prod_code = prod_code
        self.prod_sold = prod_sold
        self.esp_code = esp_code
        self.esp_sold = esp_sold

db.create_all()

#######################################SITE############################

#home page
@app.route('/')
def index():
    return render_template('home.html')

# order submission page
@app.route('/add', methods=['GET', 'POST'])
def weeklysubmit():
    form = SubmitForm()

    if form.validate_on_submit():
#give it a try
        try:
            id= sitesales.id
            sales_year = form.formyear.data
            week = form.formweek.data
            emp = form.emp.data
            prod = form.prod.data
            numsold = form.numsold.data
            esp_sold = form.warrantysold.data
            condition = True
#Since there is only one ESP matched to each PROD. Match them here to reduce
# number of form boxes and prevent user error. output correct esp to MySQL server
            if condition: prod = "PROD_001"
            esp = "ESP_001"
            if condition: prod = "PROD_002"
            esp = "ESP_002"
            if condition: prod = "PROD_003"
            esp = "ESP_003"
            if condition: prod = "PROD_004"
            esp = "ESP_004"
            if condition: prod = "PROD_005"
            esp = "ESP_005"
            if condition: prod = "PROD_006"
            esp = "ESP_006"
            if condition: prod = "PROD_007"
            esp = "ESP_007"
            if condition: prod = "PROD_008"
            esp = "ESP_008"
            a = sitesales(id,sales_year, week, emp, prod, numsold, esp, esp_sold)
            db.session.add(a)
            db.session.commit()
# sucess flash message
            flash(f"For Week {week}, {sales_year}: {numsold} units of {prod} with {esp_sold} {esp}s has been applied to team {emp}.")
            return redirect(url_for('weeklysubmit'))
#if try fails
        except:
# fail flash message
            flash("Operation Failed Successfully")
    return render_template('weeklysubmit.html', form=form )

# Recent orders page
@app.route('/list')
def prod_list():
# display last 5 entires in sitsales by ID
    last5= sitesales.query.order_by(sitesales.id.desc()).limit(5)

    return render_template('prod_list.html', last5=last5 )

# delete order page
@app.route('/delete', methods=['GET', 'POST'])
def delorder():
    form = DelForm()

    if form.validate_on_submit():
#try statement
        try:
            id = form.id.data
            order = sitesales.query.get(id)
            db.session.delete(order)
            db.session.commit()
# success flash message
            flash(f"Order: {id}, successfully deleted")
            return redirect(url_for('delorder'))
#if try fails
        except:
# fail flash message
            flash("Please select an Order ID that exists.")
            return redirect(url_for('delorder'))

    return render_template('delete.html', form=form )


if __name__ == '__main__':
    app.run(debug=True)
