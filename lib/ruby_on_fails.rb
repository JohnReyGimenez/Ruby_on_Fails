# frozen_string_literal: true

require 'ruby_on_fails/array'
require 'ruby_on_fails/version'
require 'ruby_on_fails/routing'

module RubyOnFails
  # The main application class used to handle Rack requests
  class Application
    def call(env)
      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end