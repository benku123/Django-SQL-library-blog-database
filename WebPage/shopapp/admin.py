from django.contrib import admin
from .models import *
# Register your models here.
admin.site.register(book)
admin.site.register(author)
admin.site.register(category)
admin.site.register(publisher)
admin.site.register(likes)
admin.site.register(notification)
admin.site.register(comments)
admin.site.register(BookView)