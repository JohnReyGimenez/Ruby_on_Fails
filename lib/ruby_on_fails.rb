# frozen_string_literal: true

require_relative 'ruby_on_fails/version'

module RubyOnFails
  # The main application class used to handle Rack requests
  class Application
    def call(_env)
      [200, { 'Content-Type' => 'text/html' },
       ['Hello from Ruby on Rulers!']]
    end
  end

  class Error < StandardError; end
  # Your code goes here...
end
