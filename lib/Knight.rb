class Knight
  # Represents all possible moves a Knight 
  # can make on the chessboard
  @@moves = [
    [2, 1], [2, -1], [-2, 1], [-2, -1],
    [1, 2], [1, -2], [-1, 2], [-1, -2]
  ]

  # Returns an array of all valid moves a Knight
  # can make from a given position
  def valid_moves(from)
    moves = []
    @@moves.each do |move|
      row = from[0] + move[0]
      col = from[1] + move[1]
      moves << [row, col] if valid_move?(row, col)
    end
    moves
  end

  private 
  # Checks if a given row and col combination
  # stays within the board
  def valid_move?(x, y)
    x.between?(0, 8) && y.between?(0, 8)
  end
end