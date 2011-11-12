class Habit < ActiveRecord::Base
  
  belongs_to :user
  has_many :missed_days
end
