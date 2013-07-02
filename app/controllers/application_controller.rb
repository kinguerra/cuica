class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def noticia
    @noticia = Post.last
  end
  helper_method :noticia

  private

    def current_admin
      @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
    end
    helper_method :current_admin

    def authorize
      redirect_to root_url, alert: "Not authorized" if current_admin.nil?
    end
end