from django.urls import path
from . import views

urlpatterns = [
    path('estudiantes/', views.listar_estudiantes, name='listar_estudiante'),
    path('libros/', views.listar_libros, name='listar_libros'),
]