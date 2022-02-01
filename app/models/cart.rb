class Cart < ApplicationRecord

  belongs_to :user, optional: true
  has_many :products
  has_many :line_items
  

end
