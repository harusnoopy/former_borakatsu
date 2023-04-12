class Public::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: :destroy
  before_action :configure_permitted_parameters, if: :devise_controller?

  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーは削除できません。'
    end
  end
  
  def after_sign_up_path_for(resource)
    user_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :telephone_number])
  end
end
