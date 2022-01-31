class Mixtape < ApplicationRecord
  
  belongs_to :user, optional: true
  validates :name, length: {minimum: 2}

end