module Rubipara
  class Episode
    attr_reader :episode, :episode_num

    @@config = nil

    def self.load_config
      config_file = "#{File.dirname(__FILE__)}/../../config/episode.yml"
      @@config = YAML.load_file(config_file)
    end

    def initialize(episode_num = 1)
      Episode.load_config
      @episode_num = episode_num.to_i
      if @@config.has_key?(@episode_num)
        @episode = @@config[@episode_num]
      end
    end

    def show
      if @episode
        puts "第#{@episode_num}話\s#{@episode['title']}"
      else
        puts 'ERROR: No such an episode'
      end
    end

    def self.list
      Episode.load_config unless @@config
      @@config.each do |key, value|
        puts "第#{key}話\s#{value['title']}"
      end
    end

  end
end