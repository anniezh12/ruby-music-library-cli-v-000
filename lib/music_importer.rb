require 'pry'
class MusicImporter
attr_accessor :path

def initialize(path)
    @path = path
end


  def files
     @files = Dir.glob("#{path}/*.mp3") # will assign all mp3 files to variable @files
     @files.collect{|f| f.gsub("#{path}/", "")}

  end

  def import
    files.each{|file|  Song.create_from_filename(file)}
  end

end
#binding.pry