# Generated by Django 5.1.1 on 2024-09-18 00:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('etapa_elecion_semilla', '0002_rename_variedades_info_variedade_info'),
    ]

    operations = [
        migrations.AddField(
            model_name='variedade_info',
            name='a_tener_en_cuenta2',
            field=models.TextField(null=True),
        ),
        migrations.AddField(
            model_name='variedade_info',
            name='a_tener_en_cuenta3',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='variedade_info',
            name='a_tener_en_cuenta',
            field=models.TextField(null=True),
        ),
    ]
