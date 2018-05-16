class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :date, :user, :doctor, presence: true
  validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"
end
