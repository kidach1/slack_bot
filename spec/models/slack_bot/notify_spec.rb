require 'spec_helper'

module SlackBot
  describe 'notify' do
    subject { ActiveSupport::JSON.decode(Notify.execute)['ok'] }
    it { expect(subject).to eq(true) }
  end
end
