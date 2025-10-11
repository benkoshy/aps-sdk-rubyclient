This is an unofficial Ruby Client for some of the services in Autodesk's Platform Services API - focusing primarily on some of ~~Forge's~~ (now known as Autodesk Platform Services) APIs.

# Aps::Sdk::Rubyclient

Ruby Client for [Autodesk's Platform Services API](https://aps.autodesk.com/developer/documentation). 

This API will primarily focus on:

* OSS
* Model Derivative API.
* Authentication API.

### WARNING

* This repo is under active development: I will be making and force-pushing changes to the master branch.
* When it is some-what ready and battle tested in my own repositories, I will publish to RubyGems.
* Documentation will follow.


### Development Doctrine

* All API development must be based on battle tested usage via APIs in your own app. In this case - in mine.
* Autodesk typically allow the use of equivalent variables in both URLs and headers. Where possible, I have opted for the use of such variables in headers. If you have objections you may:

(a) override URLs
(b) override request methods.


## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/aps-sdk-rubyclient.

Please provide an easily replicable sample.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

It's pretty simple: [code of conduct](https://github.com/[USERNAME]/aps-sdk-rubyclient/blob/master/CODE_OF_CONDUCT.md).


