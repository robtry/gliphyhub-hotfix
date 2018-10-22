Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	devise_for :users
	resources :comunicados,except: [:update,:edit, :show]

	authenticated :user do
		root 'comunicados#new'
	end
	unauthenticated :user do
		root 'comunicados#index'
	end

	get "~/uploads/archivos/:id/:basename.:extension" => "comunicados#download"
end
