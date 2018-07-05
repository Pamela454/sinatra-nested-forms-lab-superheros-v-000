class Team
  attr_accessor :name, :motto

  TEAM = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    PIRATES << self
  end

  def self.all
    TEAM
  end
end
