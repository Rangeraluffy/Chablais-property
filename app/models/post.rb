class Post < ApplicationRecord
  mount_uploader :image, PhotoUploader

  scope :active, -> { where(active: true)}
  scope :latest, -> { order created_at: :desc }

  paginates_per 4
end
