from django import forms
from .models import Product

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ['name','description','price','favorite','type', 'image']
    
    def __init__(self, *args, **kwargs):
        super(ProductForm, self).__init__(*args, **kwargs)
        self.fields['image'].required = False

class ImageUploadForm(forms.Form):
    image = forms.ImageField()

class QuantityForm(forms.Form):
    Choice_Quantity = [
        ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '5'),
        ('6', '6'),
        ('7', '7'),
        ('8', '8'),
        ('9', '9'),
     ]
    
    Quantity = forms.ChoiceField(choices=Choice_Quantity)
     