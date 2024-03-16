from django.db import models

class Product(models.Model):
    name = models.CharField(max_length = 100)
    description = models.TextField()
    price = models.DecimalField(max_digits = 10, decimal_places = 2)
    favorite = models.BooleanField(default = False)
    type = models.CharField(max_length = 100)
    image = models.CharField(max_length = 255)

class Bag(models.Model):
    product_name = models.CharField(max_length = 100)
    product_price = models.DecimalField(max_digits = 10, decimal_places = 2, default = 0.00)
    product_image = models.CharField(max_length = 255, default = 'No image')
    username = models.CharField(max_length = 255)
    quantity = models.IntegerField(default = 1)
    
class UserLog(models.Model):
    username = models.CharField(max_length = 100)
    password = models.CharField(max_length = 255)
    email = models.CharField(max_length = 255)
    date_joined = models.CharField(max_length = 255)