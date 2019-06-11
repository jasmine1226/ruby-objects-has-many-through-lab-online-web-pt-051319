class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs << song
    song
  end

  def genres
    genres = []
    self.songs.each do |song|
      if genres.include?(song.genre) == false
        genres << song.genre
      end
    end
    genres
  end
end
