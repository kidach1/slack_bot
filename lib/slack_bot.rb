require "slack_bot/engine"
require "addressable/uri"
require "net/http"

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

  mattr_accessor :icon_url do
    'https://qiita-image-store.s3.amazonaws.com/0/48274/9dbacfb2-4a39-4a2c-b8f1-e252bcb12a4e.png'
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

  def self.notify(body: SlackBot.body, bot_name: SlackBot.bot_name,
    channel: SlackBot.channel, icon_url: SlackBot.icon_url)
    Notify.execute(body, bot_name, channel, icon_url)
  end
end
