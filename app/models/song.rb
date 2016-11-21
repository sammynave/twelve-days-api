class Song < ApplicationRecord
  validates_presence_of :name, :lyrics, :audio

  def lines
    lyrics.split("\n")
  end
end
