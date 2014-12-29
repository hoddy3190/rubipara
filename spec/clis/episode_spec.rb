require 'spec_helper'

describe Rubipara::Episode do

  let(:episodes) { Rubipara::Episode.all }

  describe '.new' do
    context 'when the arg is an episode number which has been already broadcast' do
      it { expect(Rubipara::Episode.new(2).title).to eq('約束やぶっちゃダメぷりっ') }
    end
    context 'with invalid args' do
      it 'should throw an exception of Rubipara::Episode::NotFoundError' do
        expect{Rubipara::Episode.new 'invalid'}.to raise_error(Rubipara::Episode::NotFoundError, 'ERROR: No such an episode')
      end
    end
    context 'with no args' do
      it 'should throw an exception of ArgumentError' do
        expect{Rubipara::Episode.new}.to raise_error(ArgumentError)
      end
    end
  end

  describe '.all' do
    context 'when it is called' do
      before { episodes = Rubipara::Episode.all }
      it { expect(episodes.instance_of?(Array)).to be true }
      it { expect(episodes.length).to be > 0 }
      it 'should return an array composed of episode objects' do
        expect(episodes[0].instance_of?(Rubipara::Episode)).to be true
      end
    end
  end

end
