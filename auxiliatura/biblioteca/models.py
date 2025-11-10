# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Estudiante(models.Model):
    id_estudiante = models.BigAutoField(primary_key=True)
    nombre = models.CharField(max_length=120)
    imagen = models.TextField(blank=True, null=True)
    genero = models.CharField(max_length=1)
    email = models.CharField(unique=True, max_length=160)

    class Meta:
        managed = False
        db_table = 'estudiante'
    
    def __str__(self):
        return self.nombre


class Libro(models.Model):
    id_libro = models.BigAutoField(primary_key=True)
    titulo = models.CharField(max_length=160)
    asignatura = models.CharField(max_length=40, blank=True, null=True)
    portada = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'libro'
        
    def __str__(self):
        return self.titulo


class Prestamo(models.Model):
    id_prestamo = models.BigAutoField(primary_key=True)
    fecha_salida = models.DateField()
    fecha_devolucion = models.DateField(blank=True, null=True)
    id_estudiante = models.ForeignKey(Estudiante, models.DO_NOTHING, db_column='id_estudiante')
    id_libro = models.ForeignKey(Libro, models.DO_NOTHING, db_column='id_libro')

    class Meta:
        managed = False
        db_table = 'prestamo'
    
    def __str__(self):
        return self.id_prestamos
