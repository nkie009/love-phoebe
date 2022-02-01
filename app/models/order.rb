class Order < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :cart
  has_many :line_items


end
