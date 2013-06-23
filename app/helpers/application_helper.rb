module ApplicationHelper

  def signed_in_admin
    unless signed_in?
      redirect_to root_url, notice: "low permissions"
    end
  end
end
