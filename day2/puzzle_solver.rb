require_relative './helpers.rb'

class PuzzleSolver
  class << self
    include Helpers
    def solve(puzzle_input_file_path)
      arr = input_file_lines_to_array(puzzle_input_file_path)
      parsed_input = parse_strings_to_hashes(arr)
      valid_passwords_count = 0
      parsed_input.each do |hash|
        if (valid?(hash))
          valid_passwords_count += 1
        end
      end

      valid_passwords_count
    end

    def solve_part_2(puzzle_input_file_path)
      arr = input_file_lines_to_array(puzzle_input_file_path)
      parsed_input = parse_strings_to_hashes(arr)
      valid_passwords_count = 0
      parsed_input.each do |hash|
        if (valid?(hash, true))
          valid_passwords_count += 1
        end
      end

      valid_passwords_count
    end

    private

    def valid?(hash, new_policy = false)
      if (new_policy)
        present_at_position_1 = hash[:password][hash[:min] - 1] === hash[:letter]
        present_at_position_2 = hash[:password][hash[:max] - 1] === hash[:letter]
        return false if (present_at_position_1 && present_at_position_2)
        return false if (!present_at_position_1 && !present_at_position_2)
        return true if (present_at_position_1 || present_at_position_2)
        return false
      end

      instances_of_letter_count = (hash[:password].scan(hash[:letter])).count
      instances_of_letter_count >= hash[:min] && instances_of_letter_count <= hash[:max]
    end
  end

end
