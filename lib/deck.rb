
# deck.rb

require_relative 'card'

class Deck

  attr_reader :cards

  def initialize(value_list = STANDARD_VALUES, suit_list = STANDARD_SUITS)
    @cards = []
    value_list.each do |value|
      suit_list.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    # returns a card
    raise ArgumentError, "No cards left to draw" if @cards.empty?

    return @cards.delete_at(-1)
  end

  def shuffle
    # shuffles the deck
    return @card.shuffle!
  end

  def count
    # counts cards in deck
    return @cards.length
  end
end
