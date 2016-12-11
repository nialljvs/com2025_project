class HomeController < ApplicationController
  def home
  end
  def contact
  end
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    
    
    if email.blank? || name.blank? || telephone.blank? || message.blank?
      flash[:alert] = I18n.t('home.request_contact.generic_blank')
      redirect_to contact_path
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
      redirect_to root_path
    end
    
  end
end
