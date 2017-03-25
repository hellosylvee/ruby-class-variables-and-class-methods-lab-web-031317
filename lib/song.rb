require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count #arr_of_genre_types
    # take an array of genres
    # iterate over arr
      # count total number of instances for each genre
      # return results in a hash {genre: genre_count}
    result = {}
    self.genres.each do |genre|
      result[genre] = @@genres.count(genre)
    end
    result
  end

  def self.artist_count
    result = {}
    self.artists.each do |artist|
      result[artist] = @@artists.count(artist)
    end
    result
  end
end
