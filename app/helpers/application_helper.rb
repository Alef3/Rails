module ApplicationHelper
  def format(date)
  date.strftime("%d/%m/%y %H:%M")
  end
end
