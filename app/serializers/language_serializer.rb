class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :locations
end
