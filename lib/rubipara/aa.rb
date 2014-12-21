module Rubipara
  class AA

    def initialize(file_name, options)
      @file_name = file_name
      @word = options[:word] || 'Kashikoma!'
      @max_length = options[:max_length] || 20
    end

    def printout
      begin
        f = File.open("#{File.dirname(__FILE__)}/../../config/aa/#{@file_name}.txt")
      rescue => e
        raise e.message
      end
      while line = f.gets
        if line.include?('#{word}')
          line.gsub!(/\#\{word\}/, _adjust_word(@word, @max_length))
        end
        puts line
      end
      f.close
    end

    private

    def _adjust_word(word, max_length)
      if (word.length > max_length)
        word[0, max_length]
      else
        word.center(max_length, ' ')
      end
    end

  end
end
