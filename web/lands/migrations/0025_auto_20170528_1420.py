# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-28 14:20
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('lands', '0024_auto_20170528_1326'),
    ]

    operations = [
        migrations.AlterField(
            model_name='metaimage',
            name='meta',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='images', to='lands.Meta'),
        ),
    ]