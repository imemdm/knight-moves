def create_board
  board = []
  for i in (0..7)
    for j in (0..7)
      board << [i, j]
    end
  end
  board
end

p create_board