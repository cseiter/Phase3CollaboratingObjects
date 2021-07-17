require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name=name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_artist = filename.split(" - ")[0]
        song_title = filename.split(" - ")[1]
        new_song = self.new(song_title)
        new_song.artist_name = song_artist
        new_song
        #binding.pry
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end