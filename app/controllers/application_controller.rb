class ApplicationController < ActionController::Base
  include GraphqlDevise::SetUserByToken
  protect_from_forgery with: :exception
end
