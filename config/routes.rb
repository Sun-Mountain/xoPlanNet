Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post "/graphql", to: "graphql#execute"

  mount_graphql_devise_for 'User', at: 'auth'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'pages/landing'

  # Defines the root path route ("/")
  root "pages#landing"
end
