from flask_wtf import FlaskForm
from wtforms import SubmitField
# from wtforms.ext.sqlalchemy.fields import QuerySelectField
from wtforms_alchemy import model_form_factory


from ..models import Location


from app import db


BaseModelForm = model_form_factory(FlaskForm)


class ModelForm(BaseModelForm):
    @classmethod
    def get_session(self):
        return db.session


class LocationForm(ModelForm):
    submit = SubmitField('Сохранить')

    class Meta:
        model = Location
