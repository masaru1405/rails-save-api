Rails.application.routes.draw do
  root 'persons#index'
  get  'persons' => 'persons#index'
  get 'list' => 'persons#list_all'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
