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

 def new
    @product = Product.new
 end

 def create
    @product = Product.new(params[:product])
 end


end
