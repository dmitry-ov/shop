class Product < ActiveRecord::Base
 
   validates_presence_of  :category_id,
                          :foto, 
                          :name,
                          :price, 
                          :vendor, 
                          :describe 

   validates_uniqueness_of  :foto,
                            :name, 
                            :price, 
                            :vendor, 
                            :describe

end
