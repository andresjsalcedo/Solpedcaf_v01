from django.db import models

# Create your models here.

class variedade_info(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField()
    a_tener_en_cuenta = models.TextField()
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)


    def __str__(self):
        return self.nombre
