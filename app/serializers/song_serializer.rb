class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :lyrics, :audio
end
