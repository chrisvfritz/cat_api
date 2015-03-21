require 'rest-client'
require 'nokogiri'
require 'cat_api/image_search'
require 'cat_api/categories'

class CatAPI::Client
  attr_reader :categories

  BASE_URL = 'http://thecatapi.com/api/'

  def initialize(defaults={})
    @defaults = defaults
    response = get "#{ BASE_URL }categories/list"
    # @categories = CatAPI::Categories.new( Nokogiri::XML(response) )
    @categories = CatAPI::Categories.new( Nokogiri::XML(response) ).results
  end

  def get_images(options={})
    options = @defaults.merge(options)
    options.delete_if {|k,v| v.nil? || ( v.kind_of?(Array) && v.empty? ) }
    response = get "#{ BASE_URL }images/get?format=xml&#{ URI.encode_www_form options }"
    CatAPI::ImageSearch.new( Nokogiri::XML(response) ).results
  end

private

  def get(url)
    RestClient.get url
  end

end
