module ApplicationHelper
  def user_link(user)
    link_to user.name, user_path(user), class: 'main-color'
  end

  def formalize(time)
    time < 1.minute.ago ? "#{time_ago_in_words(time)}前" : '1分以内'
  end

  def news_title(news)
    link_to news_jump_path(news), class: 'main-color', target: '_blank' do
      truncate(news.title, length: 36)
    end
  end
end
