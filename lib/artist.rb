require 'pry'

# class Artist
#
#   attr_accessor :name, :artist, :genre
#
#   @@all = []
#
#   def initialize (name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def new_song(song_name, genre)
#     song = Song.new(song_name, self, genre)
#     self.songs.last
#   end
#
#   def songs
#     Song.all.select do |songs|
#       songs.artist == self
#     end
#   end
#
#   def genres
#     Song.all.map do |songs|
#       songs.genre
#     end
#   end
#
# end

class Artist

  attr_accessor :name, :genre

  @@all_artists = []

  def initialize (name)
    @name = name
    @@all_artists << self
  end

  def self.all
    @@all_artists
  end

  def new_song (name, genre)
    song = Song.new(name, self, genre)

  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end 
  end

end
