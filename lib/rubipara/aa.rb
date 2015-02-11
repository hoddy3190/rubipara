module Rubipara
  class AA

    attr_reader :aa_lines, :word, :max_length

    def initialize(file_name, word: nil, max_length: 20)
      @aa_lines = get_aa_lines(file_name.to_s)
      @word = word
      @max_length = max_length
    end

    private

    # return an array whose elements contain each line in AA
    # Ex. arr[0] contains the first line of AA, arr[1] contains the second line of AA.
    def get_aa_lines(file_name)
      File.open("#{File.dirname(__FILE__)}/../../config/aa/#{file_name}.txt") {|f| f.readlines }
    end

  end
end
