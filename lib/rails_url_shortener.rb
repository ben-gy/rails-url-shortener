require "rails_url_shortener/version"
require "rails_url_shortener/engine"

module RailsUrlShortener

  ##
  # constants
  CHARSETS = {
    alphanum: ('a'..'z').to_a + (0..9).to_a,
    alphacase: ('a'..'z').to_a + ('A'..'Z').to_a,
    alphanumcase: ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
  }

  ##
  # default redirection url when the key isn't found
  mattr_accessor :default_redirect, default: '/'

  ##
  # charset for generate keys
  mattr_accessor :charset, default: :alphanumcase

  ##
  # default key length used by random keys
  mattr_accessor :key_length, default: 6

  ##
  # minimum key length for custom keys
  mattr_accessor :minimum_key_length, default: 3

  ##
  # if save bots visits on db, the detection is provided by browser gem
  # and is described like "The bot detection is quite aggressive"
  # so if you put this configuration like false could lose some visits to your link
  # by default saving all requests
  mattr_accessor :save_bots_visits, default: true

end
