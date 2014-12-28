# DiscoveryEtcdIoClient

## Installation

```ruby
gem 'discovery_etcd_io_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install discovery_etcd_io_client

## Usage

```ruby
client = DiscoveryEtcdIoClient.new(token: 'xxxxxxxxxx')

client.set('foo', value: 1 )

client.get('foo').value #=> "1"
```

## Contributing

1. Fork it ( https://github.com/hoshinotsuyoshi/discovery_etcd_io_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
