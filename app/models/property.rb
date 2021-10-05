class Property < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :account

  scope :latest, -> { order created_at: :desc }

  scope :sold, -> { where(for_sale: true, status: "sold") }
  scope :for_sale, -> { where(for_sale: true, status: "available") }
  scope :offer, -> { where(for_sale: false, status: "offer")  }
  scope :estimate, -> {where(for_sale: false,  status: "estimate")  }
end
