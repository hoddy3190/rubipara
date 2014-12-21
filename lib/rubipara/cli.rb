require 'thor'

module Rubipara
  class CLI < Thor

    desc 'kashikoma [<word>]', "Let's say 'Kashikoma!' together! With an option <word>, Lala says the word!"
    def kashikoma(word = nil)
      aa = Rubipara::AA.new('kashikoma', {:word => word, :max_length => 20})
      aa.printout
    end

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

    desc 'epiqsode [<num>]', 'List pripara anime episodes. With an option <num>, show the No.<num> episode'
    def episode(episode_num = nil)
      if episode_num
        episode = Rubipara::Episode.new(episode_num)
        episode.show
      else
        Rubipara::Episode.list
      end
    end

  end
end
