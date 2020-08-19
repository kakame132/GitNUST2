class Album < ApplicationRecord
  belongs_to :users
  validates :title, presence: true, length: {maximum: 140}
  validates :description, presence: true, length: {maximum: 300}
end
