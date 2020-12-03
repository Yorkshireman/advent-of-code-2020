module PuzzleSolver
  def solve(slope_hash, path_to_file='./input.txt')
    a = File.readlines(path_to_file, chomp: true)

    a.each_with_index do |str, index|
      # exponential, so should be enough for ~300 lines
      15.times { str.concat(str) }
    end

    counter = 0
    total = 0
    a.each_with_index do |line, i|
      next unless ((i % slope_hash[:down]) === 0)

      start_index = counter * slope_hash[:right]
      (line[start_index] === '#') && total += 1
      counter += 1
    end

    total
  end

  def solve_part_2(path_to_file = './input.txt')
    slope_1_trees = solve({ right: 1, down: 1 }, path_to_file)
    slope_2_trees = solve({ right: 3, down: 1 }, path_to_file)
    slope_3_trees = solve({ right: 5, down: 1 }, path_to_file)
    slope_4_trees = solve({ right: 7, down: 1 }, path_to_file)
    slope_5_trees = solve({ right: 1, down: 2 }, path_to_file)

    slope_1_trees * slope_2_trees * slope_3_trees * slope_4_trees * slope_5_trees
  end
end
