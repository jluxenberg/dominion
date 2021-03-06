module Dominion
  class Library < Action
    
    def cost() 5         end
    def to_s() 'Library' end
      
    def play(turn)
      player = turn.player
      while(player.can_draw? && player.hand.size < 7)
        draw = player.draw.first
        player.say "Drew a #{draw}"
        if draw.is_a?(Action)
          player.discard_card(draw) if player.get_boolean('Discard?')
        end
      end
    end
      
  end
end