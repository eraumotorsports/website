EraumotorsportsCom::Application.routes.draw do
  match 'competition' => 'pages#competition', :as => :competition
  match 'team' => 'pages#team', :as => :team
  match 'photos' => 'pages#photos', :as => :photos
  match 'contact' => 'pages#contact', :as => :contact
  match 'sponsors' => 'pages#sponsors', :as => :sponsors

  root :to => 'pages#index'

end
