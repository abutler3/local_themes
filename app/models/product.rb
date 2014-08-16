class Product < ActiveRecord::Base
  has_attached_file :file
  has_many :sales

  belongs_to :user


  validates_numericality_of :price, greater_than: 49, message: "must be at least 50 cents"
end
