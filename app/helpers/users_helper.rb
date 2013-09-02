module UsersHelper

  def is_current_user(user)
    return user.id == current_user.id
  end
end