require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path=path

  end

  def files
    Dir.entries(@path).select do |file|
      /\.*.mp3/=== file
    end
  end

  def import
    files.each do |file_name|
    Song.new_by_filename(file_name)
    end
 
  end

end
