#!/bin/sh
sudo su - mastodon -c 'cd ~mastodon/live && RAILS_ENV=production bundle exec rails console'

# To search users:
# * Account.find_local('username').user
# * User.find_by(email: 'hello@example.com')
#
# To set first user admin:
# * User.first.update(admin: true)

