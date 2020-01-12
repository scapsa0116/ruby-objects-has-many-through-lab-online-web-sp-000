class Artist 
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
 
 
 def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
 
 def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
  end
  
  
  def genres                        
    self.songs.collect do |song|
      song.genre
    end
  end
end 