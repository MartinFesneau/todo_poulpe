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

  def tasks_due_today
    return Task.where(deadline: Date.today, done: false, user: current_user).size
  end

  def tasks_not_done
    return Task.where(done: false, user: current_user).size
  end

  def order_comments(array)
    return array.sort_by{ |element| element.created_at }
  end
end