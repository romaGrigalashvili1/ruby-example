require_relative 'board'
require_relative 'human'

class Game

  attr_reader :board, :player1, :player2

  def self.start
    new.start
  end

  def initialize
    @board = Board.new
  end

  def start
    puts "Let the game begin"
      @player1 = Human.new('O')
      @player2 = Human.new('X')

    play
    puts "\nGame over"
  end

  def play
    board.print_current_board_state
    until board.game_over? || board.tie?
      player1.choose_spot(board)
      player2.choose_spot(board) if !board.game_over? && !board.tie?
      board.print_current_board_state
    end
  end
end
