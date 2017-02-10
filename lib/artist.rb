

require "pry"

class Artist

  attr_reader :name, :artist 
  @@all=[]
  def initialize(name)
    if !(@@all.find {|x| x.name==name})
      @@all<<self
    end
      @name=name
      @songs=[]
  end



  def name=(name)
    @name=name
  end

  def songs
    @songs
  end

  def save
    @@all<<self
  end

  def self.all
    @@all.uniq
  end

  def self.find_or_create_by_name(artist)
     search=@@all.find {|artist_obj| artist_obj.name==artist}
     if search==nil
        new_artist_object=Artist.new(artist)
      else
        search
      end
  end

  def add_song(song_name)
    @songs<<song_name
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end




end
