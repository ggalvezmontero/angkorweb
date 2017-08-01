Rails.application.routes.draw do
  root 'home#index'
  get 'acerca' => 'home#about'
  get 'partners' => 'home#partners'
  get 'contactanos' => 'home#contact'
  get 'soluciones' => 'home#solutions'
  get 'esupport' => 'home#esupport'
  get 'webmail' => 'home#webmail'
  get 'unete' => 'join#index'
  get 'unete/profesionales-con-experiencia' => 'join#senior'
  get 'unete/profesionales-jovenes' => 'join#young'
  get 'unete/practicantes' => 'join#students'

  resources :contacts, only: [:new, :create]
  resources :possible_members, only: [:new, :create]
  get 'logosmailclientes/:file_name' => 'logosmailclientes#show', :constraints => {:file_name =>/[^\/]+/}
end
