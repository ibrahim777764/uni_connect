class Student < ApplicationRecord
    has_many :registrations
    has_many :courses, through: :registrations
  
    validates :first_name, :last_name, presence: true
  end
  