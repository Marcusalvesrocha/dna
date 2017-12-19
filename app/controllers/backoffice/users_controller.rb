class Backoffice::UsersController < ApplicationController
  def index
  end
  
  def new
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to backoffice_path, notice: "Excluído com sucesso!"
    else
      render :index
      
    end
  end

  private
  
     def params_user
      params.require(:user).permit(:email, :password, :password_confirmation)
     end

end
