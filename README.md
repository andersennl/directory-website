# Folder Watcher

This little Ruby project uses Sinatra to create a server and present directories inside specified paths. I'm using this to get a quick overview of the content on harddrives attached to my Raspberry Pi.

It's tested with Raspbian running on a Raspberry Pi. The `-e production` flag makes the server available on the local network.

## Setup
```ruby
git clone git@github.com:andersennl/folder-website.git
cd folder-watcher
gem install sinatra

ruby folder-watcher.rb -e production "path/to/folder" "path/to/another/folder"
```
Open the url specified in the terminal in your browser.
