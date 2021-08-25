from django.db import models
from django.shortcuts import reverse
from django.contrib.auth.models import User


class author(models.Model):
    familyName = models.CharField(max_length=20)
    FirstName = models.CharField(max_length=20)
    email = models.CharField(max_length=50)

    def __str__(self):
        return self.familyName + ' ' + self.FirstName


class category(models.Model):
    category = models.CharField(max_length=50)

    def __str__(self):
        return self.category


class publisher(models.Model):
    name = models.CharField(max_length=50)
    email = models.EmailField()

    def __str__(self):
        return self.name


class book(models.Model):
    title = models.CharField(max_length=100)
    img = models.ImageField(default='no image')
    content = models.TextField()
    page_num = models.IntegerField()
    author = models.ForeignKey(author, on_delete=models.CASCADE)
    category = models.ManyToManyField(category)
    publisher = models.ForeignKey(publisher, on_delete=models.CASCADE)
    slug = models.SlugField()

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('detail', kwargs={
            'slug': self.slug
        })

    def get_like_url(self):
        return reverse('like', kwargs={
            'slug': self.slug
        })


    @property
    def commentss(self):
        return self.comments_set.all()
    @property
    def get_comment_count(self):
        return self.comments_set.all().count()

    @property
    def get_view_count(self):
        return self.bookview_set.all().count()

    @property
    def get_like_count(self):
        return self.likes_set.all().count()


class notification(models.Model):
    title = models.CharField(max_length=100)
    body = models.TextField()
    email = models.EmailField()

    def __str__(self):
        return self.title


class BookView(models.Model):
    user = models.ForeignKey(User, null=True, on_delete=models.CASCADE)
    book = models.ForeignKey(book, on_delete=models.CASCADE)

    def __str__(self):
        return self.user


class comments(models.Model):
    book = models.ForeignKey(book, on_delete=models.CASCADE)
    user = models.ForeignKey(User, null=True, on_delete=models.CASCADE)
    content = models.TextField()

    def __str__(self):
        return self.user.username


class likes(models.Model):
    user = models.ForeignKey(User, null=True, on_delete=models.CASCADE)
    book = models.ForeignKey(book, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username







