EraumotorsportsCom::Application.routes.draw do
  devise_for :users

  mount Ckeditor::Engine => '/ckeditor'

  root :to => 'pages#show', :id => "home"
  resources :pages do
    member { post :ckupdate }
  end
end
