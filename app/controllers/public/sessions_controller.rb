class Public::SessionsController < Devise::SessionsController
  before_action :user_state, only: [:create]
  
  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to user_path, notice: 'ゲストユーザーとしてログインしました'
  end  
  
  def after_sign_in_path_for(resource)
    flash[:notice] = "ログインしました"
    user_path
  end
  
  protected

  def user_state
    @user = User.find_by(email: params[:user][:email])
    return if !@user
    if @user.valid_password?(params[:user][:password]) && @user.is_deleted
      flash[:notice] = "退会済みです。再度ご登録をしてご利用ください。"
      redirect_to new_user_registration_path
    end
  end  
end
