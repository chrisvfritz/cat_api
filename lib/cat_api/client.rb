require 'rest-client'
require 'nokogiri'
require 'cat_api/image_search'

class CatAPI::Client

  BASE_URL = 'http://thecatapi.com/api/'

  def initialize(defaults={})
    @defaults = defaults
  end

  def get_images(options={})
    options = @defaults.merge(options)
    response = get "#{ BASE_URL }images/get?format=xml&#{ URI.encode_www_form options }"
    CatAPI::ImageSearch.new( Nokogiri::XML(response) ).results
  end

private

  def get(url)
    RestClient.get url
  end

end