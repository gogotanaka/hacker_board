module ApplicationHelper
  def user_link(user)
    link_to user.name, user_path(user), class: 'main-color'
  end

  def formalize(time)
    time.strftime("%Y-%m-%d %H:%M:%S")
  end
end
