require_relative './card'

class Deck
  def draw
    Card.new(2, :spades)
  end
end