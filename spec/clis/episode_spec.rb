require 'spec_helper'

describe Rubipara::Episode do

  describe '.new' do
    context 'when the arg is an episode number which has been already broadcast' do
      episode = Rubipara::Episode.new 2
      it 'should initialize with its arg' do
        expect(episode.episode_num).to be === 2
      end
    end
    context 'with invalid args' do
      it 'should throw an exception of RuntimeError' do
        expect{Rubipara::Episode.new 'invalid'}.to raise_error(RuntimeError, 'ERROR: No such an episode')
      end
    end
    context 'with no args' do
      it 'should throw an exception of ArgumentError' do
        expect{Rubipara::Episode.new}.to raise_error(ArgumentError)
      end
    end
  end

  describe '.load_config' do
    context 'when config is loaded' do
      config = Rubipara::Episode.load_config
      it 'should have some text of YAML format' do
        expect(config.length).to be > 0
      end
    end
  end

end