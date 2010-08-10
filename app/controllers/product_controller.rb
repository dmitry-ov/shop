class ProductController < ApplicationController
  
 def index 
   @products = Product.all
 end 
 

 def show 
    @product = Product.find(params[:id])
 end

 def small_show
    #@product = Product.find(params[:id])
     show
 end


end
