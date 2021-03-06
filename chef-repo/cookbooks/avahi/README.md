[![Build Status](https://secure.travis-ci.org/pwelch/chef-avahi.png)](http://travis-ci.org/pwelch/chef-avahi)
[![Dependency Status](https://gemnasium.com/pwelch/chef-avahi.png)](https://gemnasium.com/pwelch/chef-avahi)

## Description
Chef cookbook that installs and configures [avahi](http://avahi.org/) the zeroconf software.

## Usage
Include `avahi::default` recipe in the `run_list`.

To disable the avahi-daemon set the attribute like so:
```
  default['avahi']['disable_service'] = true
```

## Development
Development requires [Vagrant](http://vagrantup.com/) and these vagrant-plugins:
* `vagrant plugin install vagrant-berkshelf`
* `vagrant plugin install vagrant-omnibus`

## Testing
Running tests:
```bash
bundle exec strainer test
```

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Source code availabe [here](https://github.com/pwelch/chef-avahi)

## To Do
* Ensure support on other platforms (RHEL/Arch).
