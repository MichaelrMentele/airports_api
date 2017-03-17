Rails.application.routes.draw do
  get '/airports/nearby', to: "airports#nearby", defaults: { format: :json }
end
