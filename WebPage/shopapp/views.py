from django.shortcuts import render, redirect, get_list_or_404
from django.contrib.auth.forms import UserCreationForm
from .forms import CreateUserForm
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from .models import *
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .forms import BookForm, CommentForm, NotificationForm
from django.contrib.auth.models import User

class BookListView(ListView):
    model = book


class BookDetailView(DetailView):
    model = book

    def post(self, *args, **kwargs):
        form = CommentForm(self.request.POST)
        if form.is_valid():
            book = self.get_object()
            comment = form.instance
            comment.user = self.request.user
            comment.book = book
            comment.save()
            return redirect('detail', slug=book.slug)
        return redirect('detail', slug=self.get_object().slug)


    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'form': CommentForm()
        })
        return context

    def get_object(self, **kwargs):
        object = super().get_object(**kwargs)
        if self.request.user.is_authenticated:
            BookView.objects.get_or_create(user=self.request.user, book=object)
        return object


class BookCreateView(CreateView):
    form_class = BookForm
    model = book
    success_url = '/'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'view_type': 'create'
        })
        return context



class BookUpdateView(UpdateView):
    form_class = BookForm
    model = book
    success_url = '/'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'view_type': 'update'
        })
        return context


class BookLDeleteView(DeleteView):
    model = book
    success_url = '/'


def notification(request):
    form = NotificationForm()
    if request.method == 'POST':
        form = NotificationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('list')
        else:
            messages.warning(request, 'not valid inputs')

    context = {'form': form}

    return render(request, 'shopapp/report.html', context)

def registration(request):
    form = CreateUserForm()

    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request, 'Account was created for ' + user)
            return redirect('login')
        else:
            messages.warning(request, 'not valid inputs')

    context = {'form': form}

    return render(request, 'shopapp/registration.html', context)


def loginPage(request):
    context = {}
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('list')
        else:
            messages.info(request, 'Username or password is incorrect')

    context = {}
    return render(request, 'shopapp/login.html', context)


@login_required(login_url='login')
def logoutPage(request):
    logout(request)
    return redirect('list')


def like(request, slug):
    books = get_list_or_404(book, slug=slug)
    like_qs = likes.objects.filter(user=request.user, book=books)
    if like_qs.exists():
        like_qs[0].delete()
        return redirect('detail', slug=slug)
    likes.objects.create(user=request.user, book=books)
    return redirect('detail', slug=slug)


