require "discovery_etcd_io_client/version"
require 'etcd'

class DiscoveryEtcdIoClient < Etcd::Client
  attr_reader :token

  def initialize(opts = {})
    super
    @host = 'discovery.etcd.io'
    @port = 80
    @token = opts[:token] || raise
  end

  def key_endpoint
    '/' + @token
  end

  def [](key)
    get('/' + key).value
  rescue Etcd::KeyNotFound
  end

  def []=(key, value)
    set('/' + key, value: value)
  end

  def to_h
    hash = get('').children.each_with_object({}) do |node, new_hash|
      key   = node.key.split('/').last
      value = node.value
      new_hash[key] = value
    end
    Hash[*hash.sort.flatten]
  end

  def to_s
    to_h.to_s
  end
end
