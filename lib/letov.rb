require 'json'

module Letov
  LYRICS = JSON.parse(IO.read(File.join( File.dirname(__FILE__), 'output.json')))

  def self.say
    song = rand(LYRICS.size)
    string = rand(LYRICS[song]['lyrics'].size)
    LYRICS[song]['lyrics'][string]
  end
end