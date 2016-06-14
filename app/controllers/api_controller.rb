class ApiController < ApplicationController
  protect_from_forgery with: :null_session

  def current_ability
    Ability.new(request.headers['token'], 'api')
  end
end