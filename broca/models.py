from django.db import models

# Create your models here.

class broca(models.Model):
    nombre = models.CharField(max_length=100)
    tipo = models.CharField(max_length=10)
    sintomas = models.TextField()
    descripcion = models.TextField()
    mdp = models.TextField()
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)



    def __str__(self):
        return self.nombre