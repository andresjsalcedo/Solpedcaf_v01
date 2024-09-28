from django.urls import path
from . import views

app_name = 'soluciones_para_su_cultivo'

urlpatterns = [
    # post views
    path('', views.variedade_list, name='variedade_list'),
    path('<int:id>/', views.variedade_detail, name='variedade_detail'),
]