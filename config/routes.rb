Saml::Application.routes.draw do
  
  match '/auth/saml/callback', :to => 'sessions#create'
  match '/auth/failure', :to => "sessions#failure"
  match '/login', :to => redirect('/auth/saml')
  root :to => 'welcome#index'
  
end
