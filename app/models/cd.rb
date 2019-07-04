class Cd < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  has_one_attached :image
  attribute :new_image

  validates :title, presence: true, length: { maximum: 100 }
  validates :artist_name, presence: true, length: { maximum: 100}
  validates :price, presence: true,
    numericality: { 
      only_integer: true,
      greater_than: 1
    }
  validates :description, presence: true, length: { maximum: 500 }
  validates :genre_id, presence: true

  scope :find_newest_cds, -> (p) { page(p).per(4).order(genre_id: :desc) }

  before_save do
    self.image = new_image if new_image
  end
end
