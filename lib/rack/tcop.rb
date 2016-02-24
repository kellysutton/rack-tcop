module Rack
  class Tcop
    def initialize(app)
      @app = app
    end

    def call(env)
      return @app.call(env) unless development?

      status, header, body = @app.call env

      Nokogiri::XML.parse(body) { |config| config.strict }

      [status, header, body]
    end

  private

    def development?
      ENV['RACK_ENV'] == 'development'
    end
  end
end
