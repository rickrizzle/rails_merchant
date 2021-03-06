class Product < ApplicationRecord
   
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :stock, numericality: { 
        only_integer: true, 
        greater_than_or_equal_to: 0 }

    has_many :order_items

end
