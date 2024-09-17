from django.shortcuts import render
from django.http import Http404
from .models import variedade_info

# Create your views here.

def variedade_info_list(request):
    variedade_infos = variedade_info.objects.all()
    return render(
        request,
        'etapa_elecion_semilla/post/list.html',
        {'variedade_infos': variedade_infos}
    )


def variedade_info_detail(request):
    try:
        variedade_info = variedade_info.objects.get(id=id)
    except variedade_info.DoesNotExist:
        raise Http404('Variedade no encontrada')
    return render(
        request,
        'etapa_elecion_semilla/post/detail.html',
        {'variedade_info': variedade_info}
    ) 
