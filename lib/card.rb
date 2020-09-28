
# card.rb
STANDARD_VALUES = (1..13).to_a
SPECIAL_VALUES = [1, 11, 12, 13]
STANDARD_SUITS = [:hearts, :clubs, :spades, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError, "#{value} is not a valid card value. Card value must be between 1-13 inclusive." if !STANDARD_VALUES.include?(value)
    raise ArgumentError, "#{suit} is not a valid card suit. Card suit must be hearts, spaces, clubs, or diamonds." if !STANDARD_SUITS.include?(suit)

    @value = value
    @suit = suit
  end

  def value_to_face_card
    case value
    when 1
      return "Ace"
    when 11
      return "Jack"
    when 12
      return "Queen"
    when 13
      return "King"
    else
      return value
    end
  end

  def to_s
    if SPECIAL_VALUES.include?(value)
      return "#{value_to_face_card} of #{suit.to_s}"
    end
    return "#{value} of #{suit.to_s}"
  end

end