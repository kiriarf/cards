require_relative './card'

class Deck
  def initialize
    cards = [
      Card.build(:spades),
      Card.build(:hearts),
      Card.build(:diamonds),
      Card.build(:clubs)
    ].flatten

    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end