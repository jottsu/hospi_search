Rails.application.routes.draw do

  get 'reviews/new'

  devise_for :patients, controllers: {
    sessions:      'patients/sessions',
    passwords:     'patients/passwords',
    registrations: 'patients/registrations'
  }

  devise_for :hospitals, controllers: {
    sessions:      'hospitals/sessions',
    passwords:     'hospitals/passwords',
    registrations: 'hospitals/registrations'
  }

  get '/search_hospitals' => 'reservations#search_hospitals'
  get '/open_list' => 'reservations#open_list'
  get '/tokyo' => 'reservations#toukyouto'
  get '/saitama' => 'reservations#satitamakenn'
  get '/hospitals_list' => 'reservations#hospitals_list'
  get '/finish' => 'reservations#finish'
  root 'application#root'
  get '/open_reserved_list' => 'reservations#open_reserved_list'
  get '/reservations_list' => 'reservations#reservations_list'
  get '/confirm' => 'reservations#confirm'
  get '/mypage' => 'patients#show'
  get '/reservation/:id' => 'reservations#show'

  get '/reviews/new' => 'reviews#new'
  get '/reviews/list' => 'reviews#review_list'


end
