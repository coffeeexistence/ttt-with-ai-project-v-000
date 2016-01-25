class TicTacToeCLI
	def initialize
	end

	def call
		
		puts("0, 1 or 2 Player mode? (0/1/2)")
		mode = gets.chomp.strip
		if mode=="2"
		  game=Game.new
		  puts "2 player mode selected"
		elsif mode=="1"
		  cpu = Player::Computer.new("X")
		  player = Player::Human.new("O")
		  game=Game.new(player, cpu)
		  puts "1 player mode selected"
		elsif mode=="0"
		  cpu1 = Player::Computer.new("X")
		  cpu2 = Player::Computer.new("O")
		  game=Game.new(cpu1, cpu2)
		  puts "0 player mode selected"
		end
		puts "...Starting Game..."
		puts ""
		game.play
	end

end