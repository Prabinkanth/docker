# myapp/urls.py
from django.urls import path
from .views import demo_view

urlpatterns = [
    path('demo/', demo_view, name='demo'),
]
