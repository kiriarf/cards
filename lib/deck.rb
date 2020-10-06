require_relative './card'

class Deck
  def initialize
    cards = [:spades, :hearts, :diamonds, :clubs].map do |suit|
      Card.build(suit)
    end.flatten
      
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end