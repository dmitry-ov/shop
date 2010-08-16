class ProductsController < ApplicationController
  
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
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end

 end


 def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(@product) }
        format.xml  { render :xml => @product,
                             :status => :created,
                             :location => @product }
      else
        flash[:notice] = 'Products not  created.'
        format.html { redirect_to(@product) }
        format.xml  { render :xml => @product,
                             :status => :created,
                             :location => @product }
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors,
                             :status => :unprocessable_entity }
      end
    end
 end

end
