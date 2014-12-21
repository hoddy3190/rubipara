require 'spec_helper'

describe Rubipara::Episode do

  describe '.config' do
    context 'when config is loaded' do
      config = Rubipara::Episode.load_config
      it 'should have some text of YAML format' do
        expect(config.length).to be > 0
      end
    end
  end

  describe '.new' do
    context 'with no args' do
      episode = Rubipara::Episode.new
      it 'should initialize with its arg being 1' do
        expect(episode.episode['title']).to eq('アイドル始めちゃいました！')
      end
    end
    context 'with args' do
      episode = Rubipara::Episode.new(2)
      it 'should initialize with its arg' do
        expect(episode.episode['title']).to eq('約束やぶっちゃダメぷりっ')
      end
    end
    context 'with invalid args' do
      episode = Rubipara::Episode.new('invalid')
      it 'should substitute 0 for episode_num' do
        expect(episode.episode_num).to be === 0
      end
    end
  end

end