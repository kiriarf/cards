require_relative './card'

class Deck
  def initialize
    spades = Card.build(:spades)
    @cards = spades.shuffle
  end

  def draw
    @cards.pop
  end
end