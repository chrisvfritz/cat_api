class CatAPI::Categories
  attr_reader :results

  def initialize(xml)
    @results = []
    xml.xpath('//name').map do |name|
      results.push(name.text)
    end
  end

end
