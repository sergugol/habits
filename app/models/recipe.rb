class Recipe
  include Mongoid::Document

  belongs_to :user
end
