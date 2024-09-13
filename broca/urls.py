from django.urls import path
from . import views

app_name = 'broca'

urlpatterns = [
    # post views
    path('', views.broca_list, name='broca_list'),
    path('<int:id>/', views.broca_detail, name='broca_detail'),
]