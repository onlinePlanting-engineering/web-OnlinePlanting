# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-05 12:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0004_auto_20170504_1428'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='qq',
            field=models.CharField(blank=True, max_length=16),
        ),
        migrations.AddField(
            model_name='profile',
            name='weixin',
            field=models.CharField(blank=True, max_length=16),
        ),
    ]
