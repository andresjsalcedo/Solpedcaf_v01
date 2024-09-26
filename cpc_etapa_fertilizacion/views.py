from django.shortcuts import render
from .models import etapa
from django.http import Http404

# Create your views here.

def etapa_list(request):
    etapas = etapa.objects.all()
    return render(
        request,
        'etapa_fertilizacion/post/list.html',
        {'etapas': etapas}
    )

def etapa_detail(request, id):
    try:
        etapa = etapa.objects.get(id=id)
    except etapa.DoesNotExist:
        raise Http404('No existe la etapa')
    return render(
        request,
        'etapa_fertilizacion/post/detail.html',
        {'etapa': etapa}
    )

