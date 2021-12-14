# README

This README would normally document whatever steps are necessary to get the
application up and running.
https://marketplace.visualstudio.com/items?itemName=ricardo-emerson.ruby-on-rails-development-extensions-pack
* authentication(sign up,sign in,sessions)
* github
* databases
* api(postman, RESTAPI)
* notification
* streaming 
* docker
* database console
* ACTIVE JOBS
* s3_storage or paperclip
* admin_pannel
* migrations
* json
* creatings gems and uploading gems
* gitbub git clone ,push,pull commit, add , restore,checkout,add remote, ssh-gen,

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* JWT https://medium.com/swlh/simple-jwt-authentication-with-rails-87b65cc1e817
* digital error --openssl-legacy-provider
* 
# to install google chrome in ubuntu
* wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
* echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
* sudo apt-get update
* sudo apt-get install google-chrome-stable
# to install rbenv 
* https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-20-04
# to install ruby on rails with rbenv
* you need to know how to use specific version and assign apecific version to to name
* https://www.tutorialspoint.com/how-to-setup-and-configure-ruby-on-rails-with-rbenv-on-ubuntu-16-04
# to install nvm to handle node version manager
* you need to know how to use specific version 
* https://tecadmin.net/how-to-install-nvm-on-ubuntu-20-04/
# creating ruby gem
* https://guides.rubygems.org/make-your-own-gem/
* 
* bundle gem gem_name
* gem build gem_name.gemspec
* ////create ruby gem account and verify
* curl -u username  https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials
* gem push gem_name.version.gem //latest generated file
* //next you can use this gem in other projects
# docker
* https://www.honeybadger.io/blog/testing-rails-with-docker/
* https://www.howtoforge.com/setup-ruby-on-rails-development-environment-with-docker-and-docker-compose-on-ubuntu/
* ...
# virtual env
* virtualenv s3-lambda
* source s3-lambda/bin/activate
* deactivate
* rm -rf s3-lambda
# zip
* zip -r ../../../../lambda.zip .
* zip -g ../lambda.zip transform.py

# server
* cluster
* task definition
* RDS
# to host a website 
* domain name https
* ssl certificate
* CDN
* container or kubernets
* database
* third party plugind for project
* suitable  cloud platform
* twilio & SMTP
* CI/CD pipline 
