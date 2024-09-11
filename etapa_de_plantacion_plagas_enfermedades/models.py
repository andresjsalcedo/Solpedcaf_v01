from django.db import models

# Create your models here.

class plaga(models.Model):
    nombre = models.CharField(max_length=50)
    tipo = models.CharField(max_length=7)
    descripcion = models.TextField()
    sintomas = models.TextField()
    tratamiento = models.TextField()
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)

    def __str__(self):
        return self.nombre

class enfermedade(models.Model):
    nombre = models.CharField(max_length=50)
    tipo = models.CharField(max_length=7)
    descripcion = models.TextField()
    sintomas = models.TextField()
    tratamiento = models.TextField()
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)


    def __str__(self):
        return self.nombre
