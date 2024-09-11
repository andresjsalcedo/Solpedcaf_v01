from django.urls import path
from . import views

app_name = 'etapa_de_plantacion_plagas_enfermedades'

urlpatterns = [
    # post views
    path('', views.plaga_list, name='plaga_list'),
    path('<int:id>/', views.plaga_detail, name='plaga_detail'),
    
    path('', views.enfermedade_list, name='enfermedade_list'),
    path('<int:id>/', views.enfermedade_detail, name='enfermedade_detail'),
]