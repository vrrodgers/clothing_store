class CategoriesController < ApplicationController
    before_action :set_category, only: []
    
    def index
        @categories = Category.all
    end

   def new
    @categories = Category.new
   end

    def create
        @categories = Category.new(category_params)
    end

   

    def edit
    
    end

    def update
        if  @categories.update(category_params)
         redirect_to categories_path, notice: 'The category was successfully updated.' 
       else
        render :edit 
        end
    end

    def destroy 
      @category.destroy
    end

    private 

    def set_category
        @category = Category.find(params[:id])
    end

    def category_params
        params.require(:category).permit(:name)
    end


end

