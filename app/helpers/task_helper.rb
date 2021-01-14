module TaskHelper

  def order_by_date(comments)
    comments.order(created_at: :asc)
  end

  def priority_in_word(priority)
    case priority
      when 1
        "High"
      when 2
        "Medium"
      when 3
        "Low"
    end
  end
end