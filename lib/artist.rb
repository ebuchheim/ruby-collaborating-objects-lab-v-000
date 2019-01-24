class Artist

    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def save
        @@all << self
    end

    def add_song(song)
        @songs << song
    end

    def print_songs
        @songs.each do |song|
            print "#{song.name}\n"
        end
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(new_artist)
        found_artist = @@all.find do |artist| 
            artist.name == new_artist
        end
        if !found_artist 
            found_artist = self.new(new_artist)
            @@all << found_artist
        end
        found_artist
    end

end