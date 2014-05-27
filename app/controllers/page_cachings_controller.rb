class PageCachingsController < ApplicationController
  caches_page :index

  def index
    # expensive operations..
    sleep 4
  end

  def expire
    expire_page action: :index
    redirect_to page_cachings_path
  end
end
