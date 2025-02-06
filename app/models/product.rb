class Product < ApplicationRecord
    include Notifications

    has_many :subscribers, dependent: :destroy
    # Attaches a single file to the model
    has_one_attached :featured_image
    has_rich_text :description

    validates :name, presence: true
    validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
end
