class MapSerializer < ActiveModel::Serializer
  attributes :id, :word_name, :etymology, :coordinates, :user
end
