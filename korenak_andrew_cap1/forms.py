from flask import Flask,render_template,request
from flask_wtf import FlaskForm
from wtforms import StringField,SelectField, IntegerField, SubmitField
from wtforms.validators import DataRequired, NoneOf, NumberRange, InputRequired
from datetime import date
date = date.today()

class SubmitForm(FlaskForm):
    date = date.today()
    prodcode = ("PROD_001","PROD_002","PROD_003","PROD_004","PROD_005","PROD_006","PROD_007","PROD_008")
#    stryear = str(date.year)
    formyear = SelectField('Year:', choices = (date.year,),coerce=int, validators = [InputRequired()])
    week= range(51)
    formweek = SelectField('Week:', choices = week, coerce=int)
    emp = SelectField('Sales Team:', choices = ('EMP234','EMP244','EMP256','EMP267','EMP290') , validators=[InputRequired()])
    prod= SelectField('Product:', choices = prodcode, validators=[InputRequired()])
    numsold=IntegerField('Num. Sold:', validators=[InputRequired(),NumberRange(min=0, message='Must enter a non-negative number')])
    warrantysold=IntegerField('Num. ESP Sold:', validators=[InputRequired(),NumberRange(min=0, message='Must enter a non-negative number')])
    submit = SubmitField('Submit Record:')


'''
name2= StringField('Owner Name',validators=[DataRequired()])


class DelForm(FlaskForm):
    id = IntegerField('Puppy ID:')
    submit = SubmitField('Remove Puppy')
'''
