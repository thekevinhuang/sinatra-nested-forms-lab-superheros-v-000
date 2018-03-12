class Team
  attr_accessor :name, :motto, :heroes
  TEAM = []

    def initialize (params)
      params.each {|key, value| self.send("#{key}=",value)}
      TEAM<<self
    end

    def self.all
      TEAM
    end
end
