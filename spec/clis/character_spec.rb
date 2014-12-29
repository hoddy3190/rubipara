require 'spec_helper'

describe Rubipara::Character do

  let(:characters) { Rubipara::Character.all }

  describe '.new' do
    context 'when the arg is a name of an exising character' do
      it { expect(Rubipara::Character.new('lala').name).to eq('真中らぁら') }
    end
    context 'with invalid args' do
      it 'should throw an exception of Rubipara::Character::NotFoundError' do
        expect{Rubipara::Character.new 'invalid'}.to raise_error(Rubipara::Character::NotFoundError, 'ERROR: No such a character')
      end
    end
    context 'with no args' do
      it 'should throw an exception of ArgumentError' do
        expect{Rubipara::Character.new}.to raise_error(ArgumentError)
      end
    end
  end

  describe '.all' do
    context 'when it is called' do
      before { characters = Rubipara::Character.all }
      it { expect(characters.instance_of?(Array)).to be true }
      it { expect(characters.length).to be > 0 }
      it 'should return an array composed of character objects' do
        expect(characters[0].instance_of?(Rubipara::Character)).to be true
      end
    end
  end

end
