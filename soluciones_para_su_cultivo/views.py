from django.shortcuts import render
from django.http import Http404
from .models import variedade

# Create your views here.

def variedade_list(request):
    variedades = variedade.objects.all()
    return render(
        request,
        'soluciones_para_su_cultivo/post/list.html',
        {'variedades': variedades}
    )


def variedade_detail(request, id):
    try:
        variedade = variedade.objects.get(id=id)
    except variedade.DoesNotExist:
        raise Http404('Variedad no encontrada')
    return render(
        request,
        'soluciones_para_su_cultivo/post/detail.html',
        {'variedade': variedade}
    )

