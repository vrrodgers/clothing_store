class ProductsController < ApplicationController
   
   
    def index
        @products = Product.all
    end

   def new
    @product = Product.all
   end

    def create
        @product = Product.new(product_params)
    end

   

    def edit
    
    end

    def update
    end





end
