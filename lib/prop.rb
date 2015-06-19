require "prop/limiter"
require "prop/bucket"
require "forwardable"

module Prop
  VERSION = "1.1.0"

  # Short hand for accessing Prop::Limiter methods
  class << self
    extend Forwardable
    def_delegators :"Prop::Limiter", :read, :write, :configure, :configurations, :disabled, :before_throttle
    def_delegators :"Prop::Limiter", :throttle, :throttle!, :throttled?, :count, :query, :reset
    def_delegators :"LeakyBucket::Bucket", :leaky, :leaky!, :reset_bucket
  end
end
