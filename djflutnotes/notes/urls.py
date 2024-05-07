from django.urls import path
from . import views

urlpatterns = [
    path('', views.getRoutes),
    path('notes/create', views.createNote),
    path('notes/<pk>/update', views.updateNote),
    path('notes/<pk>/delete', views.deleteNote),
    path('notes/', views.getNotes),
    path('notes/<pk>', views.getNote),
    
]