class ApplicationController < ActionController::API

  before_action :current_user, :current_shopping_cart
  
  def current_user
    if session[:user_id]
      @user = User.find(sessiong[:user_id])
    end
  end

  def current_shopping_cart
    if logged_in?
      @shopping_cart = @user.shopping_cart
    else
      if session[:shopping_cart]
        @shopping_cart = ShoppingCart.find(sessiong[:shopping_cart])
        session[:shopping_cart] = @shopping_cart.id
      end
    end
  end

  def logged_in?
    !!current_user
  end
end
