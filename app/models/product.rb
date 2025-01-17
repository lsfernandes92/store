class Product < ApplicationRecord
  include Notifications

  has_one_attached :featured_image
  has_rich_text :description

  validates :name, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
  validate :name_starts_with

  private
    def name_starts_with
      unless name.end_with?("z")
        errors.add(:name, "must end with 'z'")
      end
    end
end
