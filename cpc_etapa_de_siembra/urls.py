from django.urls import path
from . import views

app_name = 'cpc_etapa_de_siembra'

urlpatterns = [
    # post views
    path('', views.etapa_list, name='etapa_list'),
    path('<int:id>/', views.etapa_detail, name='etapa_detail'),
]