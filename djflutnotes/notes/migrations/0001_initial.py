# Generated by Django 5.0.1 on 2024-02-06 13:52

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Note',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('body', models.TextField()),
                ('updated', models.DateField(auto_now=True)),
                ('created', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
