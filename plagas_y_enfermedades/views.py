from django.shortcuts import render
from .models import etapa
from django.http import Http404

# Create your views here.

def etapa_list(request):
    etapas = etapa.objects.all()
    return render(
        request,
        'plagas_y_enfermedades/post/list.html', 
        {'etapas': etapas})


def etapa_detail(request, id):
    try:
        etapa = etapa.objects.get(id=id)
    except etapa.DoesNotExist:
        raise Http404("No Post found.")
    return render(
        request, 
        'plagas_y_enfermedades/post/detail.html', 
        {'etapa': etapa})  
