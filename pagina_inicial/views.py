from django.shortcuts import render
from django.http import Http404
from .models import modulo

# Create your views here.

def modulo_list(request):
    modulos = modulo.objects.all()
    return render(request,
     'pagina_inicial/post/list.html',
      {'modulos': modulos}
)


def modulo_detail(request, id):
    try:
        modulo = modulo.objects.get(id=id)
    except modulo.DoesNotExist:
        raise Http404('modulo does not exist')
    return render(request,
     'pagina_inicial/post/detail.html',
      {'modulo': modulo})  
