module Helpers
  def input_file_lines_to_array(file_path='./input.txt')
    File.readlines(file_path, chomp: true)
  end

  def parse_strings_to_hashes(strings_array)
    strings_array.map do |str|
      items = str.scan(/\w+/)
      {
        min: items[0].to_i,
        max: items[1].to_i,
        letter: items[2],
        password: items[3]
      }
    end
  end
end
