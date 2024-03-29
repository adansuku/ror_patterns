# frozen_string_literal: true

require_relative './paypal/paypal_adapter'
require_relative './braintree/braintree_adapter'
require_relative './user'

# Client code is decoupled fron any 3rd party library.
class ClientApp
  def self.call(platform:, user:)
    platform.subscribe(user)
    platform.register(user)
  end
end

ClientApp.call(platform: BraintreeAdapter, user: User.new)
ClientApp.call(platform: PaypalAdapter, user: User.new)
