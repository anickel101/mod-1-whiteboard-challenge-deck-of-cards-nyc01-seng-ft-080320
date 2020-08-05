require 'pry'

class Deck
    attr_reader :cards
    
    SUITS = ["Hearts", "Spades", "Diamonds", "Clubs"]
    RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    def initialize
        @cards = []
        SUITS.collect do |suit|
            RANKS.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end
    end

    #returns the "choosen" (and then deleted) card at a random index
    def choose_card
        @cards.delete_at(rand(self.how_many_cards))
    end

    #method to help test against rspec errors
    def how_many_cards
        @cards.count
    end
end

class Card

    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end

#binding.pry
