from django.urls import path
from . import views

app_name = 'pagina_inicial'

urlpatterns = [
    # post views
    path('', views.modulo_list, name='modulo_list'),
    path('<int:id>/', views.modulo_detail, name='modulo_detail'),
]