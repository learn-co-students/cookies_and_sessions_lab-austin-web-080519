Rails.application.routes.draw do
  get '/', to: 'products#index', as: 'homepage'
  post '/', to: 'products#add'
end
