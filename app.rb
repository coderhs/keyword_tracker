require 'cuba'
require 'twitter-text'
include Twitter::Autolink

Cuba.define do
  on get do
    on root do
      res.write auto_link(File.read('data.txt')).gsub(/[\n\r]/,"<br/>\n")
    end
  end
end
