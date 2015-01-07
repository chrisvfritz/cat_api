require 'cat_api/version'
require 'cat_api/client'

module CatAPI

  class << self

    def new(options={})
      Client.new(options)
    end

  end

end
