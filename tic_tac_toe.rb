class GameState
  attr_accessor :game_over
  attr_accessor :winner
  attr_accessor :whos_turn
  WINNING_POSITIONS = [[0, 1, 2], [3, 4, 5],[6, 7, 8],
      [0, 3, 6], [1, 4, 7],[2, 5, 8],
      [0, 4, 8], [2, 4, 6]]


  def initialize
    @game_over = false
    @winner = "none"
    @whos_turn = "none"
    @board = GameBoard.new
  end

	def start
		puts "ive s"
		@board.display_board
	end

end


class GameBoard
 	attr_accessor :board_state

 	

 	def initialize
 		@board_state = { "1" => " ",
 			 			 "2" => " ",
 			 			 "3" => " ",
 			 			 "4" => " ",
 			 			 "5" => " ",
 			 			 "6" => " ",
 			 			 "7" => " ",
 			 			 "8" => " ",
 			 			 "9" => " "
						}
    end
    def display_board

    	puts "#{board_state["1"]}|#{board_state["2"]}|#{board_state["3"]}"
    	puts "_ _ _"
    	puts "#{board_state["4"]}|#{board_state["5"]}|#{board_state["6"]}"
    	puts "_ _ _"
    	puts "#{board_state["7"]}|#{board_state["8"]}|#{board_state["9"]}"
    end




end



class Player
 	attr_accessor :name
 	attr_accessor :letter
 	attr_accessor :num_wins

  def initialize(name, letter)
  	@name = name
  	@letter = letter
  	@num_wins = 0

  end
end

game = GameState.new
game.start