require 'tweetstream'
require 'yaml'

secret = YAML.load_file("twitter_track_config.yml")

data_store = File.open('data.txt', 'a')

TweetStream.configure do |config|
  config.consumer_key       = secret['consumer_key']
  config.consumer_secret    = secret['consumer_secret']
  config.oauth_token        = secret['oauth_token']
  config.oauth_token_secret = secret['oauth_token_secret']
  config.auth_method        = :oauth
end


TweetStream::Client.new.track('part-time', 'ruby') do |status|
  File.open('data.txt', 'a') { |file|
    file.write "@#{status.user.screen_name}:  #{status.text}\r\n"
  } if status.text.include?('ruby') && status.text.include?('jobs')
end
