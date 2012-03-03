class User
  include Mongoid::Document

  has_many :habits
  has_many :recipes

  field :provider
  field :uid
  field :name

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end
