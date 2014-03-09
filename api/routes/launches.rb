get '/launches/?' do
  if params[:since]
    datetime = DateTime.strptime(params[:since], '%Y-%m-%dT%H:%M:%S')
    "return all launches since #{datetime}"
  else
    'return all launches'
  end
end

post 'launch/?' do
  'add new launch'
end