get '/players/?' do
  'return all players'
end

get '/players/me/?' do
  'return current user'
end

put 'players/me/location/?' do
  'update current user location'
end

get '/players/:id/?' do
  "load user with id #{params[:id]}"
end