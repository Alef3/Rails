class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks

    scope :filter_title, ->(title) { where("title LIKE ?", "%#{title}%") if title.present? }
    scope :filter_artist_id, ->(artist_id) { where("artist_id LIKE ?", "%#{artist_id}%") if artist_id.present? }
    validates_presence_of :title, :artist
end
