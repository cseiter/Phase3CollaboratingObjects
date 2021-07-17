class Artist

    attr_accessor :name

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

    def add_song(song)
    end

    def songs
    end
        
    def self.find_or_create_by_name(name)
    end

    def self.find(name)

    def print_songs
    end



end
