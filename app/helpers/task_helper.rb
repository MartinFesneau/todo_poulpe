module TaskHelper
  def format_deadline(date)
    date.strftime("%d %B %Y")
  end
end