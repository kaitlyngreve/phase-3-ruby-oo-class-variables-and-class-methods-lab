require 'pry'

class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

one_more_time = Song.new("One More Time", "Daft Punk", "House")
get_lucky = Song.new("Get Lucky", "Daft Punk", "House")
something_about_us = Song.new("Something About Us", "Daft Punk", "House")
no_shoes_no_shirt_no_problem = Song.new("No Shoes, No Shirt, No Problem", "Kenney Chesney", "Country")
binding.pry
