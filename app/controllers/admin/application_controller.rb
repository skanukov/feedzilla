class Admin::ApplicationController < ApplicationController
  before_action :authenticate_admin!

  private

  def authenticate_admin!
    authenticate_user!
    return if current_user.admin?
    redirect_to root_path, alert: t('authorization.unauthorized_access')
  end
end
