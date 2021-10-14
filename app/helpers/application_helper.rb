module ApplicationHelper
  def title_balance_show(*items)
    unless items.empty?
      content_for :title_balance_show do
        (items << "CCB Tracker").join(" - ")
      end
    end
  end
end
