class Board
	attr_accessor :cells
	def initialize
		self.reset!
	end

	def reset!
		@cells = Array.new(9, " ")
	end

	def display
		puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
		puts "-----------"
		puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
		puts "-----------"
		puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
	end

	def position(user_input_string)
		cells[user_input_string.chomp.to_i - 1] # user is entering 1-9.  posiitons are 0-8
	end

	def update(position_arg, player_object)
	#update board when player makes a move
		#need a player object to complete method
		#call token on player
	end

	def full?
		cells.all? {|cell| cell.strip != ""}
	end

	def turn_count
		cells.count {|cell| !cell.strip.empty?}
	end

	def taken?(input)
		!cells[input.to_i - 1].strip.empty?
	end

	def valid_move?(input)
		!taken?(input) && (1..9).include?(input.to_i)
	end


  def update(position, player)
    @cells[position.to_i-1]=player.token
  end




end

# a = Board.new
# print a.full?