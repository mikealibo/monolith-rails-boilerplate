class Admin::BaseController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :append_admin_view_path
  layout "admin"

  protected

  def append_admin_view_path
    append_view_path "app/views/admin"
  end
end
