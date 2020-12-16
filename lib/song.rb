class Song
    attr_accessor :name, :artist, :genre
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end
    @@count = 0
    @@genres = Array.new
    @@artists = Array.new
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
        counts = Hash.new(0)
        @@genres.each{|key| counts[key] += 1}
        counts
    end
    def self.artist_count
        counts = Hash.new(0)
        @@artists.each{|key| counts[key] += 1}
        counts
    end

end