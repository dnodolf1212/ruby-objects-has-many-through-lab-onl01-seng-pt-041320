<<<<<<< HEAD
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name) 
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end
    
    def new_song(name, genre)
        Song.new(name, self, genre)
    end 

    def songs 
        Song.all.select{ |song| song.artist == self}
    end 

    def genres
        songs.map{ |song| song.genre }
    end 

end 
=======
class Artist 
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def new_song(name, genre)
    Song.new(self, name, genre)
  end
  
  def songs 
    Songs.all,select{ |song| song.artist == self} 
  end 
  
  def genres 
    songs.map do |song|
      song.genre
  end
>>>>>>> 74b74d0bf3cd85a223a44bb3b4f674ae34a7aabf
