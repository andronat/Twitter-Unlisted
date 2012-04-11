# Twitter-Unlisted

Twitter-Unlisted is a simple ruby script that notifies you for people you follow and are not in a list.
	
## Setup

1. Rubygems needed!!!

2. Install required gems at the command prompt if you haven't yet:

    gem install twitter

3. Make a developer account to get your Twitter OAuth credentials at http://dev.twitter.com/apps

4. Edit the script and fill:

	Twitter.configure do |config|
	  config.consumer_key = YOUR_CONSUMER_KEY
	  config.consumer_secret = YOUR_CONSUMER_SECRET
	  config.oauth_token = YOUR_OAUTH_TOKEN
	  config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
	end

5. Run: 
	
	ruby Twitter-Unlisted.rb

### Maintainers

Anastasis Andronidis (http://github.com/andronat)

## License

	This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.