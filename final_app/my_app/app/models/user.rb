class User < ApplicationRecord
  has_many :albums
  has_many :photos
  validates :first_name, presence: true, length: {maximum: 25, message: "Your first name is too loooong"}, format: { with: /\A[a-zA-Z]+\z/}, uniqueness: {scope: :last_name}
  validates :last_name, presence: true, length: {maximum: 25, message: "Your last name is too loooong"}, format: { with: /\A[a-zA-Z]+\z/}
  validates :email, presence: true, length: {maximum: 255, message:"Your email is too loooong"}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,message:"that not a email"},uniqueness:true
  validates :password, presence:true, confirmation: true, length: {minimum: 8,maximum: 64, message: "Your password must has at least 8 and at most 64 characters!"}
end
