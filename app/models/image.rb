class Image < ApplicationRecord
    belongs_to :product
    mount_uploader :link, ImageUploader
end
