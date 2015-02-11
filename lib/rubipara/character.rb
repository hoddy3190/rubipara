module Rubipara
  class Character
    class NotFoundError < StandardError; end

    attr_reader :en_name, :name, :cv, :grade, :team, :fav_phrase

    @@config = YAML.load_file("#{File.dirname(__FILE__)}/../../config/character.yml")

    class << self

      # return an array of character objects of all characters
      def all
        @@config.keys.map {|name| Character.new name }
      end

    end

    def initialize(name)
      raise NotFoundError.new('ERROR: No such a character') unless @@config.has_key?(name)
      @en_name    = name # English first name
      @name       = @@config[name]['name'] # Japanese full name
      @cv         = @@config[name]['cv']
      @grade      = @@config[name]['grade']
      @team       = @@config[name]['team']
      @fav_phrase = @@config[name]['fav_phrase']
    end

  end
end
