require 'spec_helper'

describe Rubipara::Character do

  describe '.config' do
    context 'when config is loaded' do
      config = Rubipara::Character.load_config
      it 'should have some text of YAML format' do
        expect(config.length).to be > 0
      end
    end
  end

  describe '.new' do
    context 'with no args' do
      character = Rubipara::Character.new
      it 'should initialize with its arg being lala' do
        expect(character.profile['名前']).to eq('真中らぁら')
      end
    end
    context 'with args' do
      character = Rubipara::Character.new('mirei')
      it 'should initialize with its arg' do
        expect(character.profile['名前']).to eq('南みれぃ')
      end
    end
  end

end