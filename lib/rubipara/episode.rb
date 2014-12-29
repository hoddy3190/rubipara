module Rubipara
  class Episode
    class NotFoundError < StandardError; end

    attr_reader :episode_num, :title

    @@config = YAML.load_file("#{File.dirname(__FILE__)}/../../config/episode.yml")

    class << self

      # return an array of episode objects of all episodes
      def all
        episodes = @@config.keys.map {|episode_num| Episode.new episode_num }
      end

    end

    def initialize(episode_num)
      @episode_num = episode_num.to_i
      if @@config.has_key?(@episode_num)
        @title = @@config[@episode_num]['title']
      else
        raise Rubipara::Episode::NotFoundError, 'ERROR: No such an episode'
      end
    end

  end
end
