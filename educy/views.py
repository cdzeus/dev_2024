from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages
from .forms import ProductForm, ImageUploadForm, QuantityForm
from .models import Product, UserLog, Bag
from django.conf import settings
import os


# Create your views here.
def home(request) : 
    types = Product.objects.values_list('type', flat=True).distinct()
    featured = []
    for type in types:
        products_of_type = Product.objects.filter(type = type)[:3]
        featured.extend(products_of_type)
        featured = featured[:3]
    return render (request, 'index.html', {'featured': featured})

def faq(request) : 
    return render (request, 'faq.html')
def about(request) : 
    return render (request, 'about.html')
def contact(request) : 
    return render (request, 'contact.html')

def bag(request) : 
    currentUser = request.user
    total = 0
    if currentUser.is_authenticated:
        products = Bag.objects.filter(username = currentUser)
        for product in products :
            total += (product.product_price * product.quantity)
    else :
        products = []
    return render (request, 'bag.html', {'products': products, 'total' : total})

def AddToBag(request, product_id, username) :
    if request.method == 'POST':
        product = get_object_or_404(Product, pk = product_id)
        product_name = product.name
        product_price = product.price
        product_image = product.image
        username = username
        quantity = '5'
        newProduct = Bag(product_name = product_name, product_price = product_price, product_image = product_image, username  = username, quantity = quantity)
        newProduct.save()
    return redirect ('bag')

def updateBagProduct(request, product_id):
        product = get_object_or_404(Product, pk = product_id)
        if request.method == 'POST':
            form = ProductForm(request.POST, instance=product)
            if form.is_valid():
                form.save()
                return redirect('profile')
        else: 
            form = ProductForm(instance=product)
        return render(request, 'update-product.html', {'form': form})
                
                    
def deleteBagProduct(request, product_id):
    try:
        product = get_object_or_404(Bag, pk = product_id)
        if request.method == 'POST':
            product.delete()
            messages.success(request, "Product deleted successfully")
            return redirect('bag')
    except Bag.DoesNotExist:
        messages.error(request, 'Product NOT FOUND')
    except Exception as e:
        messages.error(request, 'An error occurred when deleting the product')
    return redirect('bag')

def products(request) :
    allProduct = Product.objects.all()
    newArrival = Product.objects.filter(type = 'New Arrival')[:3]
    popular = Product.objects.all()[:3]
    return render (request, 'products.html', {'newArrival' : newArrival, 'popular' : popular, 'allProduct' : allProduct})

def productDetail(request, product_id) :
    product = get_object_or_404(Product, pk = product_id)
    suggestion = Product.objects.order_by('?')[:3]
    return render (request, 'product-detail.html', {'suggestion': suggestion, 'product': product})

def addProduct(request) : 
    if request.method == 'POST':
        form = ProductForm(request.POST)
        if form.is_valid():            
            formImage = ImageUploadForm(request.POST, request.FILES)
            if formImage.is_valid():
                image = formImage.cleaned_data['image']
                image_name = handle_uploaded_image(image)
                newProduct = form.save(commit=False)
                newProduct.image = image_name
                newProduct.save()
                return redirect('profile')
    else:
        form = ProductForm()
        formImage = ImageUploadForm()
    return render (request, 'add-product.html', {'form': form ,'formImage': formImage})

def upload_image(request):
    if request.method == 'POST':
        formImage = ImageUploadForm(request.POST, request.FILES)
        if formImage.is_valid():
            image = formImage.cleaned_data['image']
            image_name = handle_uploaded_image(image)
            return render(request, 'success.html', {'image_name': image_name})
    else:
        formImage = ImageUploadForm()
    return render(request, 'upload.html', {'form': formImage})

def handle_uploaded_image(image):
    upload_path = os.path.join(settings.MEDIA_ROOT, 'product')
    if not os.path.exists(upload_path):
        os.makedirs(upload_path)
    image_name = image.name
    with open(os.path.join(upload_path, image_name), 'wb+') as destination:
        for chunk in image.chunks():
            destination.write(chunk)
    return image_name


def updateProduct(request, product_id):
        product = get_object_or_404(Product, pk = product_id)
        if request.method == 'POST':
            form = ProductForm(request.POST, instance=product)
            if form.is_valid():
                form.save()
                return redirect('profile')
        else: 
            form = ProductForm(instance=product)
        return render(request, 'update-product.html', {'form': form})
                
                    
def deleteProduct(request, product_id):
    try:
        product = get_object_or_404(Product, pk = product_id)
        if request.method == 'POST':
            os.remove(os.path.join(settings.MEDIA_ROOT, 'product/' + product.image))
            product.delete()
            messages.success(request, "Product deleted successfully")
            return redirect('profile')
    except Product.DoesNotExist:
        messages.error(request, 'Product NOT FOUND')
    except Exception as e:
        messages.error(request, 'An error occurred when deleting the product')
    return redirect('profile')

def profile(request) :
    products = Product.objects.all()
    return render (request, 'profile.html', {'products': products})

def signUp(request) :
    if request.user.is_authenticated:
        return redirect('')
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate( username = username, password = password)
            login(request, user)
            return redirect('')
        else:
            return render(request, 'sign-up.html', {'form': form})
    else:
        form = UserCreationForm()
        return render (request, 'sign-up.html', {'form': form})

def signOut(request):
    logout(request)
    return redirect('')

def signIn(request):
    if request.user.is_authenticated:
        return render(request, 'index.html')
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username = username, password = password)
        if user is not None:
            login(request, user)
            return redirect('profile')
        else:
            msg = 'Error login'
            form = AuthenticationForm(request.POST)
            return render(request, 'sign-in.html', {'form': form, 'msg': msg})
    form = AuthenticationForm()
    return render(request, 'sign-in.html', {'form': form})

def deleteMyAccount(request, user_id):
    try:
        user = get_object_or_404(User, pk = user_id)
        if request.method == 'POST':
            UserLog.objects.create(username = user.username, password = user.password, email = user.email, date_joined = user.date_joined)
            user.delete()
            messages.success(request, "User deleted successfully")
            return redirect('')
    except Product.DoesNotExist:
        messages.error(request, 'user NOT FOUND')
    except Exception:
        messages.error(request, 'An error occurred when deleting the user')
    return redirect ('')

