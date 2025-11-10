from django.shortcuts import render
from .models import Libro, Estudiante

# Create your views here.
def listar_estudiantes(request):
    estudiantes = Estudiante.objects.all().order_by('id_estudiante')
    
    return render(request, 'biblioteca/listar_estudiantes.html', 
                  {'estudiantes': estudiantes})
    
def listar_libros(request):
    estudiantes = Libro.objects.all().order_by('id_libro')
    
    return render(request, 'biblioteca/listar_estudiantes.html', 
                  {'estudiantes': estudiantes})