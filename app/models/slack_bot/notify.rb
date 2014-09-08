module SlackBot
  class Notify < ActiveRecord::Base

    def self.execute
      text="【#{Rails.env}】#{::SlackBot.error_message}"
      username='slackbot'

      query = {token: ::SlackBot.slack_token, channel: ::SlackBot.slack_channel,
               text: text, username: username}
      uri = Addressable::URI.parse(::SlackBot.slack_endpoint)
      uri.query_values ||= {}
      uri.query_values = uri.query_values.merge(query)

      Net::HTTP.get(URI.parse(uri))
    end

  end
end