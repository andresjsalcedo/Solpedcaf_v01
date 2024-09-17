from django.urls import path
from . import views

app_name = 'etaoa_elecion_semilla'

urlpatterns = [
    # post views
    path('', views.variedade_info_list, name='variedade_info_list'),
    path('<int:id>/', views.variedade_info_detail, name='variedade_info_detail'),
]