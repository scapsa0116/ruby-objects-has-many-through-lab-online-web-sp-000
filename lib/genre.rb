class Genre 
 attr_accessor :name 
 @@all = []
 def initialize(name)
  @name = name 
  @songs = []
  @@all << self 
  
end 


def self.all 
  @@all 
end 

def add_song(song)
      @songs << song
  end

 def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  
  def artists
    Song.all.map do |song|
      song.artist
    end
  end 
end 