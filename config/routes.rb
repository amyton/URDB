Urdb::Application.routes.draw do
 
 root 'movies#homepage'

 get '/movies/:id' => 'movies#show', as: 'movie'

 get '/movies' => 'movies#homepage'

end