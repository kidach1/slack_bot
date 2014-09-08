= SlackBot

## what's this?

http://qiita.com/kidachi_/items/7f1053acb9dffc5c684d

## use

You only place config file at `config/initializers/slack_api.rb`.

```config/initializers/slack_api.rb
SlackBot.setup do |config|
  config.token = YOUR_SLACK_API_TOKEN
  config.channel = YOUR_SLACK_CHANNEL
  config.endpoint = 'https://slack.com/api/chat.postMessage'
  config.error_message = ERROR_MESSAGE
end
```

This project rocks and uses MIT-LICENSE.
