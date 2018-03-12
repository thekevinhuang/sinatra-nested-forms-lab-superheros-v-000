class Superhero
  attr_accessor :name, :power, :biography
  SUPERHEROES = []

  def initialize (params)
    params.each {|key, value| self.send("#{key}=",value)}
    SUPERHEROES<<self
  end

  def self.all
    SUPERHEROES
  end
end
