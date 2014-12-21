require 'thor'

module Rubipara
  class CLI < Thor

    desc 'character [<name>]', "Show names of characters. With an option <name>, show the character's profile"
    def character(name = nil)
      if name
        character = Rubipara::Character.new(name)
        character.show_profile
      else
        Rubipara::Character.list
      end
    end

    desc 'profile', 'Show profiles of all characters'
    def profile
      Rubipara::Character.all
    end

  end
end
