require "slack_bot/engine"
require "addressable/uri"

module SlackBot
  # your private slack token
  mattr_accessor :token do
    '<YOUR_SLACK_API_TOKEN>'
  end

  # your private slack channel
  mattr_accessor :channel do
    '<YOUR_SLACK_CHANNEL_OR_GROUP>'
  end

  # sandbox slack endpoint
  mattr_accessor :endpoint do
    'https://slack.com/api/chat.postMessage'
  end

  mattr_accessor :body do
    'error occured at test'
  end

  mattr_accessor :bot_name do
    'SlackBot'
  end

  mattr_accessor :unactive do
    false
  end

  def self.setup
    yield self if block_given?
  end

  def self.notify(body: SlackBot.body, bot_name: SlackBot.bot_name, channel: SlackBot.channel)
    Notify.execute(body, bot_name, channel)
  end
end
