from django.urls import path ,include
from familytree import views

urlpatterns = [
    path('', views.index, name='index'),
]