class Team
  attr_accessor :name, :motto

  TEAM = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    PIRATES << self
  end

  def self.all
    TEAM
  end
end
