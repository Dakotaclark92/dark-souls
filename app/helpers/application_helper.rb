module ApplicationHelper
  
  def logged_in?
    !!current_user
  end

  def logged_in_git
    !!git_user
  end

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def git_user
    @git_user = User.find(session[:name]) if session[:name]
  end
  
end
