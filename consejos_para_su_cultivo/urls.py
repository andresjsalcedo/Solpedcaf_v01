from django.urls import path
from . import views

app_name = 'consejos_para_su_cultivo'

urlpatterns = [
    # etapa views
    path('', views.etapa_list, name='etapa_list'),
    path('<int:id>/', views.etapa_detail, name='etapa_detail'),
]