module TaskHelper

  def order_by_date(comments)
    comments.order(created_at: :asc)
  end
end