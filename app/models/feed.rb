class Feed < ApplicationRecord
  validates :title, presence: true
  validates :link, presence: true
end
