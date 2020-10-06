require_relative './card'

class Deck
  SUITS = [:spades, :hearts, :diamonds, :clubs]

  def initialize
    @cards = SUITS.map { |suit| build(suit) }.flatten.shuffle
  end

  def draw
    @cards.pop
  end

  private
  
  def build(suit)
    (1..13).map { |value| Card.new(value, suit) }
  end
end