from django.urls import path

from . import views

urlpatterns = [
    path('', views.BookListView.as_view(), name='list'),
    path('create/', views.BookCreateView.as_view(), name='create'),
    path('notification/', views.notification, name='notification'),
    path('registration/', views.registration, name='registration'),
    path('login/', views.loginPage, name='login'),
    path('loout/', views.logoutPage, name='logout'),
    path('<slug>/', views.BookDetailView.as_view(), name='detail'),
    path('<slug>/update/', views.BookUpdateView.as_view(), name='update'),
    path('<slug>/delete/', views.BookLDeleteView.as_view(), name='delete'),
    path('like/<slug>/', views.like, name='like'),
]