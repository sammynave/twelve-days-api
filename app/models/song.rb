class Song < ApplicationRecord
  validates_presence_of :name, :lyrics, :audio
end
