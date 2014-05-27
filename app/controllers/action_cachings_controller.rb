class ActionCachingsController < ApplicationController
  http_basic_authenticate_with name: "root", password: "secret"

  caches_action :index

  def index
    # expensive operations..
    sleep 4
  end


  def expire
    expire_action action: :index
    redirect_to action_cachings_path
  end


  private
end
