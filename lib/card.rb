class Card
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def value
    case @value
    when 1
      return :ace
    when 11
      return :jack
    when 12
      return :queen
    when 13
      return :king
    else 
      return @value
    end
  end

  def to_s
    "the #{value} of #{@suit}"
  end

  def self.build(suit)
    (1..13).map { |value| new(value, suit) }
  end
end