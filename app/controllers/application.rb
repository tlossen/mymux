class ApplicationController < ActionController::Base

  before_filter :set_tenant

private

  def set_tenant
    db = "mymux_" + params[:tenant]
    ActiveRecord::Base.connection.execute("use #{db};")
  rescue
    render :status => 403, :inline => "invalid: " + params[:tenant]
  end

end
