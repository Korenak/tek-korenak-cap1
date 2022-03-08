from flask import Flask,render_template,request
from flask_wtf import FlaskForm
from wtforms import StringField,SelectField, IntegerField, SubmitField
from wtforms.validators import DataRequired, NoneOf, NumberRange, InputRequired
from datetime import date
date = date.today()

# Form on the add page
class SubmitForm(FlaskForm):
    date = date.today()

# Year Input box for site will only display current year and current year -1
# This prevents unexpected years being added, and will adjust automatically over time
    formyear = SelectField('Year:', choices = (date.year,date.year-1),coerce=int, validators = [InputRequired()])
# 0-51 (52) weeks in the year
    formweek =IntegerField('Sales Week: 0-51', validators=[InputRequired(),NumberRange(min=0, max=51)])
# define choices emp selectfield
    team = ("EMP234","EMP244","EMP256","EMP267","EMP290")
    emp = SelectField('Sales Team:', choices = team , validators=[InputRequired()])
# define choices for prod selectfield
    prodcode = ("PROD_001","PROD_002","PROD_003","PROD_004","PROD_005","PROD_006","PROD_007","PROD_008")
    prod= SelectField('Product:', choices = prodcode, validators=[InputRequired()])
# Numsold integer box, require input require number 0 or higher
    numsold=IntegerField('Num. Sold:', validators=[InputRequired(),NumberRange(min=0, max=999)])
# esp sold box require input require greater than or equal to 0
    warrantysold=IntegerField('Num. ESP Sold:', validators=[InputRequired(),NumberRange(min=0, max=999)])
# finally the submit button
    submit = SubmitField('Submit Record:')

# For form on the delete page
class DelForm(FlaskForm):
# require that ID must be provided, be non negative, and exist within our db
#    id = IntegerField('Order ID:', validators=[InputRequired(),NumberRange(min=0, message='Must enter a non-negative number')])
    submit = SubmitField('Remove Order')
