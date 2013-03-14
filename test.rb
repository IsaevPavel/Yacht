require './lib/player'
require './lib/game'
require './lib/roll'

puts "Welcome to Yacht\n\n"
players=Player.new("Player 1"), Player.new("Player 2")
  players.each do |player|
    game=Game.new player
    until game.over?
      puts "#{player.name}, you turn Press Enter to game"
      gets.chomp
      puts "Turn #{player.turn}\n\n"
      roll=Roll.new player
      roll.roller
    end
    puts "Last turn!!!"
    puts "You turn is over!!!\n\n"
    players.each do |total|
      puts "#{total.name} total points #{total.points}"
    end
  end
winner = players.max_by{|player| player.points}

puts "\nCongratulation #{winner.name} you win!"