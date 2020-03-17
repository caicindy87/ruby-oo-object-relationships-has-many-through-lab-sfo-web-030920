require_relative './genre'
require_relative './artist'
class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end
end