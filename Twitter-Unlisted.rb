#!/usr/bin/env ruby

# encoding: utf-8
#====================================================================
# Name        : 
#			Twitter-Unlisted.rb
# Version    : 
#			v0.01
#			
#====================================================================

require('rubygems')
require('Twitter')

twitter_client = Twitter.configure do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.oauth_token = ""
  config.oauth_token_secret = ""
end

# Get names of all twitter lists I have.
ids_from_lists = twitter_client.lists.attrs["lists"].collect do |list_name|
    
    # Get ids of poeple I follow in each twitter list.
    twitter_client.list_members(list_name).attrs["users"].collect { |u| u["id_str"].to_i }
end

ids_from_lists.flatten!.uniq!

# Get ids of people I follow and are not in any of my twitter lists.
uniq_ids = (twitter_client.friend_ids.collection - ids_from_lists)

# Print names and tags of names that are not in a list
twitter_client.users(uniq_ids).each do |user| 
    puts "#####################"
    puts "Name: " + user.name
    puts "Screen name: " + user.screen_name
end