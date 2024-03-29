# frozen_string_literal: true

require 'singleton'

# SingletonModule example
class SingletonModule
  include Singleton

  attr_accessor :name
end

byebug
sdb_users = SingletonModule.instance
sdb_users.name = ('users')
puts sdb_users.name
sdb_emails = SingletonModule.instance
puts sdb_emails.name
SingletonModule.new
