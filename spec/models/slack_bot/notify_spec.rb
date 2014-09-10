require 'spec_helper'

module SlackBot
  describe 'notify' do
    subject { ActiveSupport::JSON.decode(SlackBot.notify)['ok'] }
    it { expect(subject).to eq(false) }
    # This case will be passed if you complete settings.
    # it { expect(subject).to eq(true) }
  end

  describe 'notify with custom' do
    subject { ActiveSupport::JSON.decode(SlackBot.notify(
                                             channel: 'sample-channel',
                                             body: 'Custom body!',
                                             bot_name: 'CustomBot',
                                         ))['ok'] }
    it { expect(subject).to eq(false) }
    # This case will be passed if you complete settings.
    # it { expect(subject).to eq(true) }
  end
end
