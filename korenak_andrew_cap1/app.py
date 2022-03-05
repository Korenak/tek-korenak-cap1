import os
import config
from flask import Flask, render_template, url_for, redirect, flash
from flask_sqlalchemy import SQLAlchemy
from forms import SubmitForm
import pymysql

basedir = os.path.abspath(os.path.dirname(__file__))
app = Flask(__name__)
app.config['SECRET_KEY'] = config.key
'''
change values in config.py to change every instance of this across all files
'''
conn= "mysql+pymysql://{0}:{1}@{2}/{3}".format(config.username, config.password, config.host, config.schema)
app.config['SQLALCHEMY_DATABASE_URI'] = conn
db = SQLAlchemy(app)

'''
Things needed for site input: Table w/ unique sale index, Item_code( site- drop down selector box?)
EMP_ID( site-drop down selector box?), Year (site-selector with 2021-2030?), Week/date-range??(site-52 weeks in year)
,site-Total number units sold on that week?

'''


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
# Stretch goals?
#,db.ForeignKey('employees.emp_id')
#,db.ForeignKey('products.prod_id')
#,db.ForeignKey('services.serv_id')
    def __init__(self,id,year,week,emp_id,prod_code,serv_code):
        self.id = id
        self.sales_year = sales_year
        self.sales_week = sales_week
        self.emp_code = emp_code
        self.prod_code = prod_code
        self.prod_sold = prod_sold
        self.serv_code = esp_code
        self.esp_sold = esp_sold
'''

class employees(db.Model)
    __tablename__ = 'employees'

    emp_id = db.Column(db.Text,primary_key = True)
    team_lead = db.Column(db.Text)
    pay_grade = db.Column(db.Integer)
    region= dbColumn(db.Text)

    def __init__(self,emp_id,team_lead,pay_grade,region):
        self.emp_id = emp_id
        self.team_lead = team_lead
        self.pay_grade = pay_grade
        self.region = region

class products(db.Model)
    __tablename__ = 'products'

    prod_id = db.Column(db.Text,primary_key = True)
    prod_name = db.Column(db.Text)
    url = db.Column(db.Integer)
    region= dbColumn(db.Text)

    def __init__(self,):
'''
db.create_all()

#######################################SITE############################


@app.route('/')
def index():
    return render_template('home.html')


@app.route('/add', methods=['GET', 'POST'])
def weeklysubmit():
    form = SubmitForm()

    if form.validate_on_submit():
        # we have 2 required input fields
        year = form.formyear.data
        week = form.formweek.data
        emp = form.emp.data
        prod = form.prod.data
        numsold = form.numsold.data
        espsold = form.warrantysold.data
        if prod == "PROD_001":
            esp = "ESP_001"
        if prod == "PROD_002":
            esp = "ESP_002"
        if prod == "PROD_003":
            esp = "ESP_003"
        if prod == "PROD_004":
            esp = "ESP_004"
        if prod == "PROD_005":
            esp = "ESP_005"
        if prod == "PROD_006":
            esp = "ESP_006"
        if prod == "PROD_007":
            esp = "ESP_007"
        if prod == "PROD_008":
            esp = "ESP_008"
        db.session.add(year)
        db.session.add(week)
        db.session.add(emp)
        db.session.add(prod)
        db.session.add(numsold)
        db.session.add(esp)
        db.session.add(espsold)
#        db.session.commit()
        flash(f"For Week {week}, {year}: {numsold} units of {prod} with {espsold} {esp}s has been applied to team {emp}.")

        return redirect(url_for('weeklysubmit'))

    return render_template('weeklysubmit.html', form=form)


@app.route('/list')
def list_pup():
    # Grab a list of puppies from database.
    puppies = Puppy.query.all()

    return render_template('list_pup.html', puppies=puppies)


@app.route('/delete', methods=['GET', 'POST'])
def del_pup():
    form = DelForm()

    if form.validate_on_submit():
        id = form.id.data
        pup = Puppy.query.get(id)
        db.session.delete(pup)
        db.session.commit()

        return redirect(url_for('list_pup'))
    return render_template('delete_pup.html', form=form)








if __name__ == '__main__':
    app.run(debug=True)
