module Smartillery
  module Routing
    module Players

      def self.registered(app)

        app.get '/players/?' do
          'return all players'
        end

        app.get '/players/me/?' do
          'return current user'
        end

        app.put 'players/me/location/?' do
          'update current user location'
        end

        app.get '/players/:id/?' do
          "load user with id #{params[:id]}"
        end

      end
    end
  end
end
