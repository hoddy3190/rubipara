require 'spec_helper'

describe Rubipara::Character do

  describe '.load_config' do
    context 'when config is loaded' do
      config = Rubipara::Character.load_config
      it 'should have some text of YAML format' do
        expect(config.length).to be > 0
      end
    end
  end

  describe '.profile' do
    context 'when the arg is a name of an exising character' do
      profile = Rubipara::Character.profile 'lala'
      it 'should return the profile hash of the character' do
        expect(profile['名前']).to eq('真中らぁら')
      end
    end
    context 'with invalid args' do
      it 'should throw an exception of RuntimeError' do
        expect{Rubipara::Character.profile 'invalid'}.to raise_error(RuntimeError, 'ERROR: No such a character')
      end
    end
    context 'with no args' do
      it 'should throw an exception of ArgumentError' do
        expect{Rubipara::Character.profile}.to raise_error(ArgumentError)
      end
    end

  end

  describe '.list' do
    context 'when it is called' do
      chara_list = Rubipara::Character.list
      it 'should return an array which has some elements' do
        expect(chara_list.instance_of?(Array)).to be true
        expect(chara_list.length).to be > 0
      end
      it 'should be an array of all character names' do
        expect(chara_list.include?('lala')).to be true
      end
    end
  end

end