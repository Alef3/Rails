class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks

    scope :filter, ->(title) { where("title LIKE ?", "%#{title}%") if title.present? }
    scope :artist, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
    validates_presence_of :title, :artist
end
