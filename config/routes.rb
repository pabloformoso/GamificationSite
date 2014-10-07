Rails.application.routes.draw do
	resources :games
	resources :players

	root :to => 'home#index'

	get 'players/:username', to: 'players#show'

	post 'loguser', to: 'authentication#logUser', as: :login
	get 'login', to: 'authentication#logIn'

end
