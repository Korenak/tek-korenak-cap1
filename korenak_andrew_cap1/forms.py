from flask import Flask,render_template,request
from flask_wtf import FlaskForm
from wtforms import StringField,SelectField, IntegerField, SubmitField
from wtforms.validators import DataRequired, NoneOf, NumberRange, InputRequired
from datetime import date
date = date.today()

class SubmitForm(FlaskForm):
    date = date.today()
    prodcode = ("PROD_001","PROD_002","PROD_003","PROD_004","PROD_005","PROD_006","PROD_007","PROD_008")
    team = ("EMP234","EMP244","EMP256","EMP267","EMP290")
    formyear = SelectField('Year:', choices = (date.year,date.year-1),coerce=int, validators = [InputRequired()])
    week= range(52)
    formweek = SelectField('Week:', choices = week, coerce=int)
    emp = SelectField('Sales Team:', choices = team , validators=[InputRequired()])
    prod= SelectField('Product:', choices = prodcode, validators=[InputRequired()])
    numsold=IntegerField('Num. Sold:', validators=[InputRequired(),NumberRange(min=0, message='Must enter a non-negative number')])
    warrantysold=IntegerField('Num. ESP Sold:', validators=[InputRequired(),NumberRange(min=0, message='Must enter a non-negative number')])
    submit = SubmitField('Submit Record:')

class DelForm(FlaskForm):
    id = IntegerField('Order ID:', validators=[InputRequired(),NumberRange(min=0, message='Must enter a non-negative number')])
    submit = SubmitField('Remove Order')
