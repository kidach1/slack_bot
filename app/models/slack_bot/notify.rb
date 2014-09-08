module SlackBot::Concerns::Notify
  extend ActiveSupport::Concern

  module ClassMethods
    def notify2slack
      text="【#{Rails.env}】error occured at conversion_report_worker"
      username='slackbot'

      query = {token: ::Slackbot.slack_token, channel: ::Slackbot.slack_channel,
               text: text, username: username}
      uri = Addressable::URI.parse(::Slackbot.slack_endpoint)
      uri.query_values ||= {}
      uri.query_values = uri.query_values.merge(query)

      Net::HTTP.get(URI.parse(uri))
    end
  end
end