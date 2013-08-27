module ApplicationHelper
  def user
    current_user or User.new
  end
end
