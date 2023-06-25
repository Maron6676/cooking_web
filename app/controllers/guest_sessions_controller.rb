class GuestSessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_or_create_by(email: 'guest@example.com') do |u|
      u.password = SecureRandom.hex(10)
    end
    sign_in(user)
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path, notice: 'ログアウトしました。'
  end
end
