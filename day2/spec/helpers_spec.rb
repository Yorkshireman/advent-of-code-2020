require_relative '../helpers.rb'

RSpec.describe Helpers do
  include Helpers
  describe '#input_file_lines_to_array' do
    it 'parses file lines correctly' do
      expect(input_file_lines_to_array('./spec/test-input.txt')).to eq [
        '4-5 l: rllllj',
        '4-10 s: ssskssphrlpscsxrfsr',
        '14-18 p: ppppppppppppppppppp',
        '1-6 z: zzlzvmqbzzclrz',
        '1-2 a: babbbbbbbb'
      ]
    end
  end

  describe '#parseStringsToHashes' do
    it 'parses strings to usable hashes' do
      strings = input_file_lines_to_array('./spec/test-input.txt')
      expect(parse_strings_to_hashes(strings)).to eq [
        {
          min: 4,
          max: 5,
          letter: 'l',
          password: 'rllllj'
        },
        {
          min: 4,
          max: 10,
          letter: 's',
          password: 'ssskssphrlpscsxrfsr'
        },
        {
          min: 14,
          max: 18,
          letter: 'p',
          password: 'ppppppppppppppppppp'
        },
        {
          min: 1,
          max: 6,
          letter: 'z',
          password: 'zzlzvmqbzzclrz'
        },
        {
          min: 1,
          max: 2,
          letter: 'a',
          password: 'babbbbbbbb'
        }
      ]
    end
  end
end
