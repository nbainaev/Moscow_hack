from django.contrib import admin
from django.urls import path, include
from django.contrib.auth.views import LogoutView

from main import views

urlpatterns = [
    path('', views.home, name='home'),
    path('signup/', views.signup, name='signup'),
    path('logout/', LogoutView.as_view(), {'next_page': ''}, name='logout'),
    path('plot/', views.plot_view, name='plot'),
    path('system/', views.system, name='secret'),
    path('upload/', views.upload, name='upload'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('admin/', admin.site.urls),
]
