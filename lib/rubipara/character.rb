module Rubipara
  class Character
    attr_reader :profile

    @@config = nil

    def self.load_config
      config_file = "#{File.dirname(__FILE__)}/../../config/character.yml"
      @@config = YAML.load_file(config_file)
    end

    def initialize(name = 'lala')
      @@config = Character.load_config
      if @@config.has_key?(name)
        @profile = @@config[name]
      end
    end

    def show_profile
      if @profile
        puts "#{@profile['名前']} のプロフィール"
        @profile.each do |key, value|
          puts "#{key}\t#{value}"
        end
      else
        puts 'ERROR: No such a character'
      end
    end

    def self.list
      @@config = Character.load_config unless @@config
      @@config.each_key do |chara|
        puts "#{chara}"
      end
    end

    def self.all
      @@config = Character.load_config unless @@config
      @@config.each_value do |profile|
        profile.each do |key, value|
          if key == '名前'
            puts "\n#{value} のプロフィール"
          end
          puts "#{key}\t#{value}"
        end
      end
    end

  end
end