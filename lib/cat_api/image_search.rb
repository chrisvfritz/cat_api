require 'cat_api/image'

class CatAPI::ImageSearch

  attr_reader :results

  def initialize(xml)
    @results = xml.xpath('//image').map do |cat|
      CatAPI::Image.new cat
    end
  end

end
