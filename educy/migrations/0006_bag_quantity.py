# Generated by Django 5.0.2 on 2024-03-01 21:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('educy', '0005_rename_product_name_userlog_username'),
    ]

    operations = [
        migrations.AddField(
            model_name='bag',
            name='quantity',
            field=models.IntegerField(default=1),
        ),
    ]
