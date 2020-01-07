module ApplicationHelper

#print date-time in a readable way
  def readable_time(time)
    time.strftime("%b %d, %I:%M%P")
  end
#checks if the current user is the creater of a post
  def author_of(record)
    user_signed_in? && current_user.id == record.user_id
  end

  def admin?
    user_signed_in? && current_user.admin?
  end
end
