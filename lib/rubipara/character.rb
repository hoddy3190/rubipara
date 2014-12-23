module Rubipara
  class Character

    @@config = nil

    class << self

      def load_config
        config_file = "#{File.dirname(__FILE__)}/../../config/character.yml"
        @@config = YAML.load_file(config_file)
      end

      def profile(name)
        load_config unless @@config
        if @@config.has_key?(name)
          profile = @@config[name]
        else
          raise 'ERROR: No such a character'
        end
      end

      def list
        load_config unless @@config
        chara_name_list = []
        @@config.each_key {|name| chara_name_list.push(name) }
        chara_name_list
      end

      def all
        load_config unless @@config
      end

    end

  end
end