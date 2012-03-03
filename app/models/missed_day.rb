class MissedDay
  include Mongoid::Document

  belongs_to :habit
end
