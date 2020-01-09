def tic_tac_toe(player1, player2)
  turn = ""
  turn_counter = 0
  winner = nil
  used_numbers = []

	puts display_board(board)

  while  turn_counter < 9
      #if even player1's turn
      puts "#{player1}'s turn" if turn_counter % 2 == 0
      puts "#{player2}'s turn" if turn_counter % 2 == 1

      puts "choose number "
      recieved_value = gets.chomp().to_i
      puts "------------------"
      #check if number is already used
      if (1..9).include?(recieved_value) == false || used_numbers.include?(recieved_value)
        puts "!!number is already used or wrong character!!"
        redo
      else
        used_numbers << recieved_value
      end

      board[recieved_value], turn = "X", player1 if turn_counter % 2 == 0
      board[recieved_value], turn = "O", player2 if turn_counter % 2 == 1

      puts display_board(board)

      if turn_counter > 3
        winner = check_winner(board, turn)
        if winner
          return winner, display_board
          break
        end
      end

      puts display_board(board)
      turn_counter += 1

    end
    return "tie"
    
  puts tic_tac_toe(player1, player2)
end


def main
  puts "player1 name: "
  player1 = gets.chomp()
  puts "player2 name: "
  player2 = gets.chomp()

  puts tic_tac_toe(player1, player2)

end