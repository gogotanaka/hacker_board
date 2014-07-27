module ApplicationHelper
  def user_link(user)
    link_to user.name, user_path(user), class: 'main-color'
  end

  def formalize(time)
    time.strftime("%Y-%m-%d %H:%M:%S")
  end

  def news_title(news)
    link_to news_jump_path(news), class: 'main-color', target: '_blank' do
      truncate(news.title, length: 25)
    end
  end
end
