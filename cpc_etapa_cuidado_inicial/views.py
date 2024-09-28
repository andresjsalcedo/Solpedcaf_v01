from django.shortcuts import render
from django.http import Http404
from .models import etapa

# Create your views here.

def etapa_list(request):
    etapas = etapa.objects.all()
    return render(
        request,
        'etapa_cuidado_inicial/post/list.html',
        {'etapas': etapas}
    )


def etapa_detail(request, id):
    try:
        etapa = etapa.objects.get(id=id)
    except etapa.DoesNotExist:
        raise Http404('Etapa no encontrada')
    return render(
        request,
        'etapa_cuidado_inicial/post/detail.html',
        {'etapa': etapa}
    )    