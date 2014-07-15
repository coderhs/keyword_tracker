# Simple system to track keywords in twitter
---------------------------------------------------------

To run the application create a file called `twitter_track_config.yml` and add your twitter credentials in the following order.


```
consumer_key: 'consumer-key'
consumer_secret: 'consumer-secret'
oauth_token: 'access-token'
oauth_token_secret: 'access-secret'
```

The keywords are hard coded to the track.rb file for now the example tracks part-time jobs. Feel free to change those words to the ones you want to track.

All the data will be stored in data.txt. To view them start the webserver using the command `rackup`


## Contributing 

  * Fork it
  
  * Create your feature branch (git checkout -b my-new-feature)
  
  * Commit your changes (git commit -am 'Added some feature')
  
  * Push to the branch (git push origin my-new-feature)
  
  * Create new Pull Request

-------

Tweet me **@coderhs** if you find this useful or have some suggestions
  