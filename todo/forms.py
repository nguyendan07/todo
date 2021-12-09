from django import forms
from django.db import models
from django.forms import fields

from .models import Task


class TaskForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ('name',)
        labels = {
            'name': 'Add new task:',
        }
