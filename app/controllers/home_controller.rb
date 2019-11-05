class HomeController < ApplicationController
  def index
    redirect_to :login if !current_user
  end
end
