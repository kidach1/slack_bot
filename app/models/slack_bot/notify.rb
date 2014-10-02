module SlackBot
  class Notify < ActiveRecord::Base

    def self.execute(body, bot_name, channel)
      return 'SlackBot is unactive mode.' if SlackBot.unactive
      query = {
          token: ::SlackBot.token,
          channel: channel,
          text: body,
          username: bot_name
      }
      uri = Addressable::URI.parse(::SlackBot.endpoint)
      uri.query_values ||= {}
      uri.query_values = uri.query_values.merge(query)

      Net::HTTP.get(URI.parse(uri))
    end

  end
end