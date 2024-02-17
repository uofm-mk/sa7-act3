class Game
  def initialize
    @total_points = 0 #start game with 0 points
    @rooms = { #set point values
      1 => 5,
      2 => 10,
      3 => 15
    }
  end

  def start #start game
    puts "Welcome to the Adventure Game!"
    puts "You have #{@total_points} points."
    play_game
  end

  private

  def play_game
    loop do
      puts "Choose a room (1-3) to enter or 'exit' to end the game: "
      choice = gets.chomp.downcase
      break if choice == 'exit'#stop game if user types exit

      room_number = choice.to_i#only rooms 1-3
      if (1..3).include?(room_number)
        enter_room(room_number)
      else
        puts "Invalid choice! Please enter a number between 1 and 3."
      end
    end
    puts "Game over! You collected a total of #{@total_points} points."#print total when exit is typed
  end

  def enter_room(room_number)
    points_earned = @rooms[room_number]
    puts "You entered Room #{room_number} and earned #{points_earned} points."
    @total_points += points_earned#add points to total
    puts "Total points: #{@total_points}"
  end
end

game = Game.new #run game
game.start
