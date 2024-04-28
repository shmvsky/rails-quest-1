Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'quest#step1'
  get '/deadend', to: 'quest#deadend'

  # Кто-то начал делать квест!
  get '/step2', to: 'quest#step2'

  match '/step3', to: 'quest#step3', via: %i[get post]

  match '/step4', to: 'quest#step4', via: %i[get post]

  get '/quest/step5', to: 'quest#step5'

  match '/final', to: 'quest#final', via: %i[get post]

end
