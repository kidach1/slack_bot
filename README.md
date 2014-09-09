# SlackBot

## What's this?

This gem make slackbot notify to you easily.

## Initial settings

### Installation

Add this to your Gemfile and run the bundle command.

```
gem 'slack_bot'
```

### Generate API token

Get API token form [here](https://api.slack.com/#auth)

You should only click `Create token`.

![Slack_API___Slack.png](https://qiita-image-store.s3.amazonaws.com/0/48274/9dad2e26-2171-3a74-1a02-102ae49d1890.png "Slack_API___Slack.png")


### Set your app config

`config/initializers/slack_api.rb.`

```ruby
SlackBot.setup do |config|
  config.token = <YOUR_API_TOKEN>
  config.channel = <YOUR_CHANNEL_OR_GROUPE_NAME>
  config.bot_name = <BOT_NAME>
  config.message = <DEFAULT_MESSAGE>
end
```


## Usage

```ruby
# Call me anywhere
SlackBot.notify
```

That's all!


## Sample

`config/initializers/slack_api.rb`

```ruby
SlackBot.setup do |config|
  config.token = xxxxxx
  config.channel = '#sample-channel'
  config.bot_name = 'SlackBot'
  config.body = "[#{Rails.env}] Hello, SlackBot!"
end
```

```ruby
#Call me anywhere
SlackBot.notify
```

### Result

<img src="https://qiita-image-store.s3.amazonaws.com/0/48274/79649019-b72a-7283-4a34-9702aec69d73.png" width="640" />


## Custom

If you wanna change parameters by context,

```ruby
SlackBot.bot_name = 'CustomBot'
SlackBot.body = 'Custom body!'
SlackBot.notify
```

## Custom Sample

```ruby
#Call me anywhere
SlackBot.bot_name = "CustomBot"
SlackBot.body = "[#{Rails.env}] Custom body!"
SlackBot.notify
```

### Result

<img src="https://qiita-image-store.s3.amazonaws.com/0/48274/b4dce009-025b-cabc-e801-2a71061be243.png" width="640" />


This project rocks and uses MIT-LICENSE.
