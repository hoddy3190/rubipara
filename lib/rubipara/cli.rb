require 'thor'

module Rubipara
  class CLI < Thor

    desc 'kashikoma [<word>]', "Let's say 'Kashikoma!' together! With an option <word>, Lala says the word!"
    def kashikoma(word = 'Kashikoma!')
      kashikoma = Rubipara::AA.new 'kashikoma', word: word
      aa = kashikoma.get_aa # return an array whose elements contain each line in AA
      aa.each {|line| puts line }
    end

    desc 'character [<name>]', "Show names of characters. With an option <name>, show the character's profile"
    def character(name = nil)
      if name
        begin
          profile = Rubipara::Character.profile name
          puts "#{profile['名前']} のプロフィール"
          profile.each {|key, value| puts "#{key}\t#{value}" }
        rescue => e
          puts e.message
        end
      else
        chara_name_list = Rubipara::Character.list
        chara_name_list.each {|chara_name| puts chara_name }
      end
    end

    desc 'profile', 'Show profiles of all characters'
    def profile
      Rubipara::Character.all.each_value do |profile|
        puts "\n#{profile['名前']} のプロフィール"
        profile.each {|key, value| puts "#{key}\t#{value}" }
      end
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
