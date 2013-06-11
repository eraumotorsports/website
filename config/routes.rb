EraumotorsportsCom::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  root :to => 'pages#show', :id => "home"
  resources :pages, :path => '' do
    member { post :ckupdate }
  end
end
