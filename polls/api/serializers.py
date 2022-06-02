from books import models
from rest_framework import serializers


class BooksSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Books
        fields = "__all__"
