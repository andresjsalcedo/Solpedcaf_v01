from django.db import models

# Create your models here.

class variedade(models.Model):
    nombre = models.CharField(max_length=50)
    plaga_o_enfermedad = models.CharField(max_length=50)



    def __str__(self):
        return self.nombre
