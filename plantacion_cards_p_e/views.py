from django.shortcuts import render
from .models import cardpe
from django.http import Http404
# Create your views here.

def cardpe_list(request):
    cardpes = cardpe.objects.all()
    return render(
        request, 
        'plantacion_cards_p_e/post/list.html', 
        {'cardpes': cardpes}
    )

def cardpe_detail(request):
    try:
        cardpe = cardpe.objects.get(id=id)
    except cardpe.DoesNotExist:
        raise Http404('Cardpe no encontrado')
    return render(
        request,
        'plantacion_cards_p_e/post/detail.html',
        {'cardpe': cardpe}
    )  # Redirigir a la página de detalles del post
