require 'spec_helper'

describe Rubipara::AA do

  describe '.new' do
    context 'when the arg is a name of an exising AA' do
      it { expect(Rubipara::AA.new(:kashikoma).aa_lines.length).to be > 0 }
    end
  end

end
