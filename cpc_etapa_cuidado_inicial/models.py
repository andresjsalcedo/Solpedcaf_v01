from django.db import models

# Create your models here.

class etapa(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField()
    a_tener_en_cuenta = models.TextField( null=True, blank=True)
    a_tener_en_cuenta2 = models.TextField( null=True, blank=True)
    a_tener_en_cuenta3 = models.TextField(null=True, blank=True)
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)
    


    def __str__(self):
        return self.nombre