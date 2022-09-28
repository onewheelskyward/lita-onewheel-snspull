require 'aws-sdk-sns'
require 'aws-sdk-sts'

module Lita
  module Handlers
    class OnewheelSnspull < Handler
      http.post '/stabled', :handle_stabled

      def handle_stabled(response)
        print response.inspect
      end

      Lita.register_handler(self)
    end
  end
end
