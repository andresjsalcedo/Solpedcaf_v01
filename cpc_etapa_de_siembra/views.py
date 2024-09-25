from django.shortcuts import render
from .models import etapa
from django.http import Http404

# Create your views here.

def etapa_list(request):
    etapas = etapa.objects.all()
    return render(
        request,
        'etapa/post/list.html',
        {'etapas': etapas }
    )

def etapa_detail(request, id):
    try:
        etapa = etapa.objects.get(id=id)
    except etapa.DoesNoExist:
        raise Http404('etapa does not exist')
    return render(
        request,
        'etapa/post/detail.html',
        {'etapa': etapa}
    )