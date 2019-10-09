class Song
  attr_accessor :name, :artist_name
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def artist=(artist)
    @artist = artist
    @artist_name = artist.name
    artist.songs << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
