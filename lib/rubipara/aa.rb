module Rubipara
  class AA

    def initialize(file_name, word: nil, max_length: 20)
      @file_name = file_name
      @word = word
      @max_length = max_length
    end

    def get_aa
      f = File.open("#{File.dirname(__FILE__)}/../../config/aa/#{@file_name}.txt")
      aa = []
      while line = f.gets
        # substitute some words for #{word} in AA if necessary
        if line.include?('#{word}') && @word
          line.gsub!(/\#\{word\}/, adjust_word(@word, @max_length))
        end
        aa.push(line)
      end
      f.close
      aa
    end

    private

    def adjust_word word, max_length
      if (word.length > max_length)
        word[0, max_length]
      else
        word.center(max_length, ' ')
      end
    end

  end
end
