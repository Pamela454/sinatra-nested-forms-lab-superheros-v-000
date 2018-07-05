class Hero
  attr_accessor :name, :power, :bio

  @@heros = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    @@heros << self
  end

  def self.all
    @@heros
  end
end
