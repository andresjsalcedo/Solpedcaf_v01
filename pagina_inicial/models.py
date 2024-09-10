from django.db import models

# Create your models here.

class modulo(models.Model):
    titulo = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)


    def __str__(self):
        return self.titulo
