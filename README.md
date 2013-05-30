# Mina::NetSsh

A Mina extension for using net-ssh.
Add supporting password to Mina.

## Installation

Add this line to your application's Gemfile:

    gem 'mina-net-ssh'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mina-net-ssh

## Usage

    require 'mina/net_ssh' # Add Here
    
    set :domain, 'your.host'
    set :user, 'user'
    set :password, 'password' # Add Here
    set :port, 10022 # Add Here(default: 22)
    
    task :ls do
      queue 'ls -l'
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
