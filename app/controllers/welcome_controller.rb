class WelcomeController < ApplicationController

  def index
    @current_page = :index

  end

  def about
    @current_page = :about

  end

  def projects
    @current_page = :projects
  
  end

  def contact
    @current_page = :contact

  end

  def send_contact
    WelcomeMailer.enquiry(params[:name],
    params[:email],
    params[:message]).deliver

    redirect_to contact_path
    flash[:notice] = "Thank you for your message!"
  end

end

