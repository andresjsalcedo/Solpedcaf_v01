# Generated by Django 5.1.1 on 2024-09-26 02:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('consejos_para_su_cultivo', '0003_remove_etapa_decripcion'),
    ]

    operations = [
        migrations.AddField(
            model_name='etapa',
            name='desc',
            field=models.TextField(null=True),
        ),
    ]
