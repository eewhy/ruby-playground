#Class - has def of what the object looks like. keep object def initialize section.
#object = objectname.new() will initialize data section
#initialize(,) has to match with object = objectname.new(,)
#@ is Variable

#create a class called something
#It will take ht ename of the song and a duration is seconds
#Create a method called length that prints out the length in minutes and seconds


class Song
  def initialize (name,duration)
    @name = name
    @duration = duration
  end

  def name
    @name
  end
#or attr_reader :name

    def length
    if @duration % 60 == 0
      "#{@duration / 60}:00"
    else
      "#{@duration / 60}:#{@duration % 60}"
    end
  end
end

songs = [
  Song.new("heaven",124),
  Song.new("heaven",1244),
  Song.new("heaven",134),
]

songs.each do |s|
  puts "#{s.name} is #{s.length}"
end
