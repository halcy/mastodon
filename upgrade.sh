sudo echo "applying asset changes..."
sudo chown -R mastodon:mastodon *
sudo su - mastodon -c 'cd ~mastodon/live && yarn'
sudo su - mastodon -c 'cd ~mastodon/live && RAILS_ENV=production bundle install'
sudo su - mastodon -c 'cd ~mastodon/live && RAILS_ENV=production bundle exec rails db:migrate'
sudo su - mastodon -c 'cd ~mastodon/live && RAILS_ENV=production bundle exec rails assets:precompile'
sudo systemctl restart mastodon-web.service
sudo systemctl restart mastodon-sidekiq.service
