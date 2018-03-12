class Superhero
  attr_accessor :name, :power, :biography

  def initialize (params)
    params.each {|key, value| self.send("#{key}=",value)}
  end

end
