from django.db import models

# Create your models here.

class etapa(models.Model):
    titulo = models.CharField(max_length=100)
    desc = models.TextField(null=True)
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)
    urlDestino = models.CharField(max_length=200, null=True)


    def __str__(self):
        return self.titulo
