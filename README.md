## DomainStatus

Example on: [DomainStatus Example](https://aim-domain-sStartatus.herokuapp.com/)

## Description

DomainStatus gives your rails project the ability to know the status code of any domain. Supports `HTTP` and `JSON` requests

## Get Started

1. StatusDomain works with Rails 4 onwards. You can add it to your Gemfile with:

  `gem 'domain_status'`
  
2.  Now you need run: 

  ``bundle install``.
  
3. For complete the installation you need include in  `config/routes.rb` the next code: 

  `mount DomainStatus::Engine => "/domain_status"`

Now you can use all the features of StatusDomain by entering the following url http://localhost:3000/domain_status/by_domain?domain=www.example.com`

## Test

Run the all test with `rspec` .

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

This project rocks and uses MIT-LICENSE.