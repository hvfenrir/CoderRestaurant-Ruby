class Order < ActiveRecord::Base
  belongs_to :food

  validates :food , :name , presence: true
  validates :food , :phone , presence: true
  validates :food , :address , presence: true

end
