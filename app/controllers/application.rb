class ApplicationController < ActionController::Base

  helper :all

  before_filter :set_tenant

private

  def set_tenant
    ActiveRecord::Base.connection.execute("use mymux_#{params[:tenant]};")
  end

end
