class Hero
  attr_accessor :name, :power, :biography

  HEROS = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:power]
    @height = args[:biography]
    HEROS << self
  end

  def self.all
    HEROS
  end
end
