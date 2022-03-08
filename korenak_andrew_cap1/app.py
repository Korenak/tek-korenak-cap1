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


#class for site_normal table generation

''' Attempt at Normal form output for database'''

class site_normal(db.Model):
    __tablename__ = 'site_normal'


    id = db.Column(db.Integer,primary_key = True)
    sales_year = db.Column(db.Integer)
    sales_week = db.Column(db.Integer)
    emp_id= db.Column(db.Integer)
    item_id= db.Column(db.Integer)
    number_sold = db.Column(db.Integer)

    def __init__(self,id,sales_year,sales_week,emp_id,item_id,number_sold):
        self.sales_year = sales_year
        self.sales_week = sales_week
        self.emp_id = emp_id
        self.item_id = item_id
        self.number_sold = number_sold


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
        id= site_normal.id
        sales_year = form.formyear.data
        week = form.formweek.data
        emp = form.emp.data
        prod = form.prod.data
        numsold = form.numsold.data
        numsold2 = form.warrantysold.data
        condition = True
#Taking form box input and matching to normal id values for db normalization
        if  prod == "PROD_001":
            normprod = 1
            normprod2 = 9
        if  prod == "PROD_002":
            normprod = 2
            normprod2 = 10
        if prod == "PROD_003":
            normprod = 3
            normprod2 = 11
        if  prod == "PROD_004":
            normprod = 4
            normprod2 = 12
        if  prod == "PROD_005":
            normprod = 5
            normprod2 = 13
        if  prod == "PROD_006":
            normprod = 6
            normprod2 = 14
        if  prod == "PROD_007":
            normprod = 7
            normprod2 = 15
        if  prod == "PROD_008":
            normprod = 8
            normprod2 = 16
        if  emp == "EMP234":
            normemp = 1
        if  emp == "EMP244":
            normemp = 2
        if  emp == "EMP256":
            normemp = 3
        if  emp == "EMP267":
            normemp = 4
        if  emp == "EMP290":
            normemp = 5
# try to add to database
        try:
            a = site_normal(id,sales_year, week, normemp, normprod, numsold)
            b =site_normal(id,sales_year, week, normemp, normprod2, numsold2)
            db.session.add(a)
            db.session.add(b)
            db.session.commit()
# sucess flash message
            flash(f"For Week {week}, {sales_year}: {numsold} units of {prod} with {numsold2} Service Plans applied to team {emp}.")
            return redirect(url_for('weeklysubmit'))
# if try fails
        except:
# fail flash message
            flash("Operation Failed Successfully")
    return render_template('weeklysubmit.html', form=form )




# Recent orders page
@app.route('/list', methods=['GET', 'POST'])
def prod_list():
    form = DelForm()
    last6= site_normal.query.order_by(site_normal.id.desc()).limit(6)
    if form.validate_on_submit():
        last2= site_normal.query.order_by(site_normal.id.desc()).limit(2)
#try statement
        try:
            for x in last2:
                db.session.delete(x)
                db.session.commit()
# success flash message
            flash(f"Most Recent Order Pair Deleted")
            return redirect(url_for('prod_list'))
#if try fails
        except:
# fail flash message
            flash("Please select an Order ID that exists.")
            return redirect(url_for('prod_list'))

    return render_template('prod_list.html', form=form, last6=last6)


if __name__ == '__main__':
    app.run(debug=True)
