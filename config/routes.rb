Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post "/graphql", to: "graphql#execute"

  mount_graphql_devise_for(
    'User',
    at: '/api/v1/graphql_auth',
    # base_controller: CookiesController,
    # operations: { login: Mutations::Login, register: Mutations::Register },
    # additional_mutations: { register_confirmed_user: Mutations::RegisterConfirmedUser },
    # additional_queries: { public_user: Resolvers::PublicUser }
  )

  mount_graphql_devise_for(
    'Admin',
    # authenticatable_type: Types::CustomAdminType,
    # skip:                 [:register],
    # operations:           {
    #   update_password_with_token: Mutations::ResetAdminPasswordWithToken
    # },
    at: '/api/v1/admin/graphql_auth'
  )

  mount_graphql_devise_for 'Admin', at: 'api/auth'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'pages/landing'

  # Defines the root path route ("/")
  root "pages#landing"
end
