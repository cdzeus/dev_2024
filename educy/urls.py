from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name=""),
    path('faq/', views.faq, name="faq"),
    path('about/', views.about, name="about"),
    path('contact/', views.contact, name="contact"),
    
    path('products/', views.products, name="products"),
    
    path('bag/', views.bag, name="bag"),
    
    path('add-to-bag/<int:product_id>/<str:username>/', views.AddToBag, name="add-to-bag"),
    
    path('product-detail/<int:product_id>/', views.productDetail, name="product-detail"),
        
    path('sign-in/', views.signIn, name="sign-in"),
    path('sign-up/', views.signUp, name="sign-up"),
    path('profile/', views.profile, name="profile"),
    path('sign-out/', views.signOut, name="sign-out"),
    
    
    path('upload_image/', views.upload_image, name="upload_image"),
    
    path('delete-my-account/<int:user_id>/', views.deleteMyAccount, name="delete-my-account"),
    
    path('add-product/', views.addProduct, name="add-product"),
    path('delete-product/<int:product_id>/', views.deleteProduct, name="delete-product"),
    path('update-product/<int:product_id>/', views.updateProduct, name="update-product"),
    
    path('delete-bag-product/<int:product_id>/', views.deleteBagProduct, name="delete-bag-product"),
    path('update-bag-product/<int:product_id>/', views.updateBagProduct, name="update-bag-product"),
]