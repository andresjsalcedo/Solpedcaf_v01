from django.shortcuts import render
from django.http import Http404
from .models import plaga
from .models import enfermedade 

# Create your views here.

def plaga_list(request):
    plagas = plaga.objects.all()
    return render(
        request,
        'etapa_de_plantacion_plagas_enfermedades/post/list.html', 
        {'plagas': plagas})

def plaga_detail(request):
    try:
        plaga = plaga.objects.get(id=id)
    except plaga.DoesNotExist:
        raise Http404('Plaga no encontrada')
    return render(
        request, 
        'etapa_de_plantacion/post/detail.html', 
        {'plaga': plaga})


def enfermedade_list(request):
    enfermedade = enfermedade.objects.all()
    return render(
        request,
        'etapa_de_plantacion_plagas_enfermedades/post/list.html',
        {'enfermedade': enfermedade})

def enfermedade_detail(request):
    try:
        enfermedade = enfermedade.objects.get(id=id)
    except enfermedade.DoesNotExist:
        raise Http404('Enfermedad no encontrada')
    return render(
        request,
        'etapa_de_plantacion/post/detail.html',
        {'enfermedade': enfermedade})  
