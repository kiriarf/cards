require_relative './card'

class Deck
  SUITS = [:spades, :hearts, :diamonds, :clubs]

  def initialize
    @cards = SUITS.map { |suit| Card.build(suit) }.flatten.shuffle
  end

  def draw
    @cards.pop
  end
end