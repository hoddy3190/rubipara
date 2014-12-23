module Rubipara
  class Episode
    attr_reader :episode_num, :title

    @@config = nil

    def initialize(episode_num)
      Episode.load_config unless @config
      @episode_num = episode_num.to_i
      if @@config.has_key?(@episode_num)
        @title = @@config[@episode_num]['title']
      else
        raise 'ERROR: No such an episode'
      end
    end

    class << self

      def load_config
        config_file = "#{File.dirname(__FILE__)}/../../config/episode.yml"
        @@config = YAML.load_file(config_file)
      end

      def list
        load_config unless @@config
      end

    end

  end
end