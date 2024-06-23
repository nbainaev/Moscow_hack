from django.contrib import admin
from django.urls import path, include
from djfiler import djfiler

from main import views

urlpatterns = [
    path('', views.home, name='home'),
    path('signup/', views.signup, name='signup'),
    path('system/', views.system, name='secret'),
    path('upload/', views.upload, name='upload'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('admin/', admin.site.urls),
]
