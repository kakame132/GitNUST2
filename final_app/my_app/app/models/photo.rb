class Photo < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many:albums
  validates :title, presence: true, length: {maximum: 140}
  validates :description, presence: true, length: {maximum: 300}
end
