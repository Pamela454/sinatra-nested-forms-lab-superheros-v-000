class Hero
  attr_accessor :name, :power, :height

  HEROS = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    HEROS << self
  end

  def self.all
    HEROS
  end
end
