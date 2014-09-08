require "slack_bot/engine"
require "addressable/uri"

module SlackBot
  # your private slack token
  mattr_accessor :token do
    '<your_slack_api_token>'
  end

  # your private slack channel
  mattr_accessor :channel do
    '<your_slack_channel>'
  end

  # sandbox slack endpoint
  mattr_accessor :endpoint do
    'https://slack.com/api/chat.postMessage'
  end

  mattr_accessor :error_message do
    'error occured at test'
  end

  def self.notify
    Notify.execute
  end
end
