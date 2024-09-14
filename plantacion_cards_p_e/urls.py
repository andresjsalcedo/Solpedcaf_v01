from django.urls import path
from . import views

app_name = 'plantacion_cards_p_e'

urlpatterns = [
# post views
    path('', views.cardpe_list, name='cardpe_list'),
    path('<int:id>/', views.cardpe_detail, name='cardpe_detail'),
]