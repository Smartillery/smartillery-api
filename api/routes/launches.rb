module Smartillery
  module Routing
    module Launches

      def self.registered(app)

        app.get '/launches/?' do
          param :since, DateTime
          if params[:since]
            "return all launches since #{params[:since]}"
          else
            'return all launches'
          end
        end

        app.post 'launch/?' do
          'add new launch'
        end

      end
    end
  end
end
