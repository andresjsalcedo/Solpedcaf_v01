from django.db import models

# Create your models here.

class cardpe(models.Model):
    titulo = models.CharField(max_length=200)
    tipo = models.CharField(max_length=10)
    imagen = models.ImageField(upload_to='modulos', null=True, blank=True)



    def __str__(self):
        return self.titulo
