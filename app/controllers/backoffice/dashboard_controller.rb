class Backoffice::DashboardController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.all
  end
end
