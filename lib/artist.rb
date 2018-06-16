class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = [] # initialize with an empty collection
  end


  # take in an argument of a song and associate that song with the artist by telling the song it belongs to the artist
  def add_song(song)
    @songs << song
    song.artist = self # object reciprocity: song belongs to artist
  end

  # expose the collection
  def songs
    @songs
  end

  # take in an argument of a song name, create a new song with it and associate the song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self # object reciprocity: song belongs to artist
    # return the song
    song
  end

  # making the code elegant
  def artist_name
    self.artist.name
  end

  # is a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    song_array = Song.all
    song_array.length
  end

end
