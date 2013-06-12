module ApplicationHelper
  def is_admin?
    if user_signed_in?
      if current_user.has_role? :admin
        return true
      end
    end
    return false
  end
end
