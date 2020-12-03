module PuzzleSolver
  def solve path_to_file = './input.txt'
    a = File.readlines(path_to_file, chomp: true)
    a.each_with_index do |str, index|
      # exponential, so should be enough for ~300 lines
      10.times { str.concat(str) }
    end

    total = 0
    a.each_with_index do |line, i|
      start_index = i * 3
      end_index = start_index + 3
      (a[i][start_index] === '#') && total += 1
    end

    total
  end
end
