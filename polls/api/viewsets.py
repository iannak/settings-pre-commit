from polls import models
from polls.api import serializers
from rest_framework import viewsets


class BooksViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.BooksSerializer
    queryset = models.Books.objects.all()
