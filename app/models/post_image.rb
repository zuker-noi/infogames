class PostImage < ApplicationRecord
  mount_uploader :src, PostImageUploader
  belongs_to :post
end
