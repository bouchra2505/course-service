"""
URL configuration for course_service project.
"""

from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),

    # ✅ REST API endpoints for the courses app
    path('api/', include('courses.urls')),
]
