class Habit
  include Mongoid::Document

  belongs_to :user
  has_many :missed_days
end
