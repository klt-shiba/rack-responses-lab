class Application

    def call(env)
        resp = Rack::Response.new

        resp.write (0..11).include?(Time.now.hour) ? 'morning' : 'afternoon'

        resp.finish
    end
end