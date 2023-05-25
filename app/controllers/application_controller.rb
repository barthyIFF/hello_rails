class ApplicationController < ActionController::Base
    #before_action :authenticate_user!, except: [:welcome, :about]    
    #Pede autenticacao em TODO o site
    #before_action :authenticate_user!
    #So nao pede senha no index
    before_action :authenticate_user!, except: [:about] 

    rescue_from CanCan::AccessDenied do |exception|
        render :file => "#{Rails.root}/public/semPermissao.html", :status => 403, :layout => false
    end
    
end
