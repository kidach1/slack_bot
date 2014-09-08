require "slack_bot/engine"
require "addressable/uri"

module SlackBot
  # your private slack token
  mattr_accessor :slack_token do
    'xoxp-2330834784-2332373530-2509000185-97b5a6'
  end

  # your private slack channel
  mattr_accessor :slack_channel do
    '#pf-error'
  end

  # sandbox slack endpoint
  mattr_accessor :slack_endpoint do
    'https://slack.com/api/chat.postMessage'
  end

  mattr_accessor :error_message do
    'error occured at test'
  end

  def self.notify
    Notify.execute
  end
end
