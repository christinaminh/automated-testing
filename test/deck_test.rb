require_relative 'test_helper'

describe Deck do
  let(:deck) do
    Deck.new(STANDARD_VALUES, STANDARD_SUITS)
  end
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "You can create a Deck instance" do
    it "can be instantiated" do
      expect(deck).must_be_instance_of Deck
    end

    it "is created with 52 Card objects as attributes" do
      expect(deck).must_respond_to :cards

      deck.cards.each do |card|
        expect(card).must_be_instance_of Card
      end

      expect(deck.cards.length).must_equal 52
    end
  end


  describe "#shuffle" do
    it "can call shuffle method on instance of deck" do
      expect(deck).must_respond_to :shuffle
    end
  end

  describe "#draw" do
    it "removes a card and returns the removed card" do
      # Test to ensure draw methods removes a card
      # and returns the removed card
      expect(deck.cards.length).must_equal 52

      deck.draw

      expect(deck.cards.length).must_equal 51
      expect(deck.draw).must_be_instance_of Card
    end

    it "raises an ArgumentError if there are no cards to draw" do
      52.times do
        deck.draw
      end

      expect{deck.draw}.must_raise ArgumentError
    end
  end

  describe "#count" do
    it "returns the number of cards in the Deck" do
      expect(deck.count).must_equal 52

      # if no cards
      52.times do
        deck.draw
      end

      expect(deck.count).must_equal 0
    end
  end
end
