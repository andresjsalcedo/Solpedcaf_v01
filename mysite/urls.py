"""
URL configuration for mysite project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import include, path
from pagina_inicial import views
from django.conf.urls.static import static
from django.conf import settings


urlpatterns = [
    path("admin/", admin.site.urls),
    path('pagina_inicial', include('pagina_inicial.urls', namespace='pagina_inicial')),
    path('etapa_plagas', include('etapa_plagas.urls', namespace='etapa_plagas')),
    path('plantacion_cards_p_e/', include('plantacion_cards_p_e.urls', namespace='plantacion_cards_p_e')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

