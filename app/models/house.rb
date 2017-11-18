class House < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
