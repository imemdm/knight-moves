require "./lib/Knight"

# Use Breadth first search, and connect each found
# node to its parent
def bfs(knight, to)
  relationships = []
  q = []
  q << knight.from

  node = nil
  until(q.empty?)
    
    if to == q.first
      node = to
      break
    end

    knight.valid_moves(q.first).each do |move|
      q << move
      relationships << [q.first, move]
    end
    
    q.shift
  end

  relationships
end

def get_path(pairs, from, to)
  path = []
  # Backtrack along the pairs array to find
  # the given path
  pairs.reverse.each do |pair|
    if pair[1] == to
      path << pair[1]
      to = pair[0]
    end
  end
  path << from
  path.reverse
end

def show_result(path)
  puts "You made it in #{path.length - 1} moves. Path: "
  path.each { |sq| puts sq.to_s}
end

def knight_moves(from, to)
  k = Knight.new(from)

  # Get [parent, node] pairs
  pairs = bfs(k, to)

  path = get_path(pairs, from, to)

  show_result(path)
end

