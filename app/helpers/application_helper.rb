module ApplicationHelper
  
  def full_title(title)
  basic_title = "Ruby on Rails Tutorial"
    if title.nil?
      basic_title
    else
      "#{basic_title} | #{title}"
    end
  end
end
