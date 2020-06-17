module ApplicationHelper
  def full_title(page_title = '')
    base_title = '筋肉メシ図鑑'
    if page_title.blank?
      base_title
    else
      "#{page_title} - #{base_title}"
    end
  end
end
