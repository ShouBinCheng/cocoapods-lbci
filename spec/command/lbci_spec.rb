require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Lbci do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ lbci }).should.be.instance_of Command::Lbci
      end
    end
  end
end

