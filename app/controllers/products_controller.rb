class ProductsController < ApplicationController
   before_action :set_product, only: [:create, :update]

   
    def index
        @products = Product.all
    end

   def new
    @product = Product.new
   end
   def show 
    @images = Image.all
   end

    def create
        @product = Product.new(product_params)
    end

   

    def edit
    
    end

    def update
        if  @product.update(product_params)
         redirect_to products_path, notice: 'The product was successfully updated.' 
       else
        render :edit 
        end
    end

    def destroy 
      @product.destroy
    end


    private 

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name,
                                        :price,
                                        :quantity,
                                        :category_id,
                                        :link,
                                        :primary
                
                                        )
    end


end
