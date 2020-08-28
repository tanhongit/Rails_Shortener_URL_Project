class UsersController < AdminController
  def allusers
    authorize! :manage, nil
    @users = User.ordered
  end
end
