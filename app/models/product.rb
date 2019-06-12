class Product < ApplicationRecord
    belongs_to :category
    has_many :sizes, through: :product_sizes
    belongs_to :image
    has_many :images


    mount_uploader :primary, ProductUploader
    mount_uploader :link, ProductUploader
end
