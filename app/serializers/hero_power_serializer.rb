class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :hero
  belongs_to :power
end
