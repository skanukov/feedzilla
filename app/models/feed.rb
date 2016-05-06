class Feed < ApplicationRecord
  has_many :entries

  validates :title, presence: true
  validates :link, presence: true
end
