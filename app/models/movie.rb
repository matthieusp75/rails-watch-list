class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
  TITLE = Movie.all.order(:title)
end
