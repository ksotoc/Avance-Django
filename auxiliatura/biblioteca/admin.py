from django.contrib import admin
from .models import Estudiante, Libro, Prestamo

# Register your models here.

@admin.register(Estudiante)
class EstudianteAdmin(admin.ModelAdmin):
    list_display = ('id_estudiante', 'nombre', 'imagen', 'genero', 'email')
    search_fields =('nombre', 'email')
    list_filter = ('genero',)

@admin.register(Libro)
class LibroAdmin(admin.ModelAdmin):
    list_display = ('id_libro', 'titulo', 'asignatura', 'portada')
    search_fields =('titulo', 'asignatura')