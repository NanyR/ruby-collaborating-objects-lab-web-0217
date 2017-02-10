require 'pry'

class Song

  attr_reader :name, :artist


  def initialize(name)
    @name=name
  end

  def name=(name)
    @name=name
  end

  def artist=(artist_name)
    @artist=artist_name
  end

  def self.new_by_filename(file_name)
    file=file_name.split(" - ")
    new_song=Song.new(file[1])
    new_song.artist=Artist.new(file[0])
    new_song.artist.add_song(new_song)
    new_song
  end


end
