class Genre < ApplicationRecord
  has_many :tracks

  validates_presence_of :name
end
