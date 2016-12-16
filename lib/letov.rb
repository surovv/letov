require 'json'

class Letov 
  @@lyrics = nil
  
  def initialize
    @@lyrics = JSON.parse(open_file())
  end

  def say
    begin
      @song = rand(0..@@lyrics.size)
	    @string = rand(0..@@lyrics[@song]['lyrics'].size)
	    @choose = @@lyrics[@song]['lyrics'][@string]
	    return @choose == nil ? self.say() : @choose
    rescue NoMethodError
      self.say()
    end
  end

  private
  def open_file
    return File.read(File.join( File.dirname(__FILE__), 'output.json' ))
  end

end