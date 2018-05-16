class Doctor < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments

  validates :name, :email, :age, presence: true
  validates :name, :format => {with: /\A[a-zA-Z0-9]*\z/, message: 'can have no special characters only letters'}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, uniqueness: true, on: :create
end
