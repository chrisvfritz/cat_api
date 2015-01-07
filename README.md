# CatAPI

I'm not sure how this happened, but there was not yet a Ruby wrapper for the awesome Cat API. Problems solved. I'm putting this together for use in a class, so there are no specs and it only hits a single endpoint, but it's something.

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'cat_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cat_api

## Usage

Right now, all it does is get cat images.

``` ruby
client = CatAPI.new
client.get_images
```

This will return something like:

``` irb
=> [#<CatAPI::Image:0x007f863c43b308
  @id="2hf",
  @source_url="http://thecatapi.com/?id=2hf",
  @url="http://30.media.tumblr.com/tumblr_m1o1n5Ajhx1rqyi1go1_1280.png">]
```

You can get multiple cat images and change other options by passing in parameters from [the Cat API docs](http://thecatapi.com/docs.html#images-get) as a hash. For example, to return 5 cat images at a time:

``` ruby
client.get_images(results_per_page: 5)
```

## Contributing

1. [Fork it](https://github.com/chrisvfritz/cat_api/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
