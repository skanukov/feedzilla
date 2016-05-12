class Feed < ApplicationRecord
  has_many :entries

  validates :title, presence: true
  validates :link, presence: true

  def to_s
    title
  end
end
