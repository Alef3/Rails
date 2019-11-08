class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks

    scope :filtrar, ->(title) { where("title LIKE ?", "%#{title}%") if title.present? }
  validates_presence_of :title, :artist
end
