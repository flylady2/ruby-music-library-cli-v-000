class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    created_artist = Artist.new(name)
    @@all << created_artist
  end

  def add_song(song_name)
    song_instance = Song.new(song_name)
    song_instance.artist = self if song_instance.artist != self
    @songs << song_instance unless @songs.include?(song_instance)
  end

  def songs
    @songs
  end

end
