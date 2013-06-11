EraumotorsportsCom::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  namespace :mercury do
    resources :images
  end

  mount Mercury::Engine => '/'

  root :to => 'pages#show', :id => "home"
  resources :pages, :path => '' do
    member { post :mercury_update }
  end
end
