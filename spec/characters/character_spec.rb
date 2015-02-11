require 'spec_helper'

describe Rubipara::Character do

  let(:characters) { Rubipara::Character.all }

  describe '.new' do
    context 'when the arg is a name of an exising character' do
      it { expect(Rubipara::Character.new('lala').name).to eq('真中らぁら') }
    end
    context 'with invalid string args' do
      it 'should throw an exception of Rubipara::Character::NotFoundError' do
        expect{Rubipara::Character.new 'invalid'}.to raise_error(Rubipara::Character::NotFoundError, 'ERROR: No such a character')
      end
    end
    context 'with too big number args' do
      it 'should throw an exception of Rubipara::Character::NotFoundError' do
        expect{Rubipara::Character.new(9999999)}.to raise_error(Rubipara::Character::NotFoundError, 'ERROR: No such a character')
      end
    end
    context 'with negative number args' do
      it 'should throw an exception of Rubipara::Character::NotFoundError' do
        expect{Rubipara::Character.new(-3)}.to raise_error(Rubipara::Character::NotFoundError, 'ERROR: No such a character')
      end
    end
    context 'with number 0' do
      it 'should throw an exception of Rubipara::Character::NotFoundError' do
        expect{Rubipara::Character.new(0)}.to raise_error(Rubipara::Character::NotFoundError, 'ERROR: No such a character')
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
