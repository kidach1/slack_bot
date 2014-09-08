module SlackBot
  class Notify < ActiveRecord::Base

    def self.execute
      text="【#{Rails.env}】#{::SlackBot.error_message}"
      username='slackbot'

      query = {token: ::SlackBot.token, channel: ::SlackBot.channel,
               text: text, username: username}
      uri = Addressable::URI.parse(::SlackBot.endpoint)
      uri.query_values ||= {}
      uri.query_values = uri.query_values.merge(query)

      Net::HTTP.get(URI.parse(uri))
    end

  end
end