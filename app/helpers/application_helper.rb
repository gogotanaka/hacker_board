module ApplicationHelper
  def user_link(user)
    link_to user.name, user_path(user), class: 'main-color'
  end
end
