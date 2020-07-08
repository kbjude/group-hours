class Hour < ApplicationRecord
  validates :hours, presence: true, numericality: { only_integer: true }

  has_many :grouphours, dependent: :destroy
  has_many :groups, through: :grouphours, source: :group
  belongs_to :user, dependent: :destroy
end

def totalhours
  hours = Hour.hours
  hours.each do |hour|
    hour + = hour
  end 
end
