# require 'papertrail_rails/request'
require_relative 'papertrail_rails/request'
module PapertrailRails
  @api_key = nil

  def self.api_key=(api_key)
    @api_key = api_key
    PapertrailRails::Request.set_default_headers(api_key)
  end

  def self.api_key
    @api_key
  end

  def self.search_status(query)
    PapertrailRails::Request.get("/events/search.json?q=status=", query)
  end

  def search(query)
    PapertrailRails::Request.get('/events/search.json?q=', query)
  end
end
