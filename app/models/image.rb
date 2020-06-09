class Image < ApplicationRecord
  validates :image_url, presence: true, uniqueness: true
end
