require 'pry'

class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        save << self
    end

    def save
        @@all
    end

    def self.all
        @@all
    end

    def artist_name
    self.artist ? artist.name : nil
        # if self.artist
        #     self.artist.name
        # else
        #     nil
        # end
    end
end
