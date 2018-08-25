class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    artists.uniq.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    artists.uniq
    end
  end
end
