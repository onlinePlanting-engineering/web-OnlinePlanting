# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-07-13 00:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='WpUser',
            fields=[
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('user_login', models.CharField(max_length=180, unique=True)),
                ('user_pass', models.CharField(max_length=192)),
                ('user_nicename', models.CharField(blank=True, max_length=150, null=True)),
                ('email', models.CharField(db_column='user_email', default='', max_length=300)),
                ('user_url', models.CharField(blank=True, max_length=300, null=True)),
                ('user_registered', models.DateTimeField(auto_now_add=True)),
                ('user_activation_key', models.CharField(blank=True, max_length=180, null=True)),
                ('user_status', models.IntegerField(default=1)),
                ('display_name', models.CharField(blank=True, max_length=750, null=True)),
                ('is_active', models.BooleanField(default=True)),
                ('is_admin', models.BooleanField(default=False)),
            ],
            options={
                'verbose_name': 'User',
                'verbose_name_plural': 'Users',
                'db_table': 'wp_users',
            },
        ),
    ]
