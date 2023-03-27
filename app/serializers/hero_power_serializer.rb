class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :power_id, :hero_id

  belongs_to :power

end
