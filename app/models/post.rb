class Post < ApplicationRecord
  has_many :post_images
  accepts_nested_attributes_for :post_images, allow_destroy: true
end
