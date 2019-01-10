require "./lib/Knight"

# Create an 8x8 edge list
def create_board
  board = []
  for i in (0..7)
    for j in (0..7)
      board << [i, j]
    end
  end
  board
end

def bfs(from, to)
  parents = []

  q = []
  q << from

  node = nil
  parent = nil
  until(q.empty?)
    if to == q.first
      node = to
      break
    end

    parents << [parent, q.first]
    
    
    parent = q.shift
  end

  p parents.reverse
  return node
end
