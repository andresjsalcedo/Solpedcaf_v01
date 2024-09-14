from django.shortcuts import render
from .models import broca 
from django.http import Http404

# Create your views here.

def broca_list(request):
    brocas = broca.objects.all()
    return render(
        request,
        'broca/post/list.html', 
        {'brocas': brocas}
    )

def broca_detail(request, id):
    try:
        broca = broca.objects.get(id=id)
    except broca.DoesNotExist:
        raise Http404("No Post found.")
    return render(
        request, 
        'broca/post/detail.html', 
        {'broca': broca}) 