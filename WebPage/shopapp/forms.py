
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User
from .models import book, comments, notification


class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']



class BookForm(forms.ModelForm):
    class Meta:
        model = book
        fields = ('__all__')


class NotificationForm(forms.ModelForm):
    class Meta:
        model = notification
        fields = ('__all__')



class CommentForm(forms.ModelForm):
    content = forms.CharField(required=True, widget=forms.Textarea(attrs={'rows': 4}))

    class Meta:
        model = comments
        fields = ('content',)