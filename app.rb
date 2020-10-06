require './lib/card'

card = Card.new(2, :spades)

puts "You got the #{card.value} of #{card.suit}"