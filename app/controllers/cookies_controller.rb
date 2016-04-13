class CookiesController < ApplicationController
  def new
  end

  def index
  end

  def create
    cookies[params[:key].to_sym] = {
      value: params[:value],
      domain: params[:domain],
      secure: params[:secure],
    }
    redirect_to '/'
  end

  def destroy
    cookies.delete params[:id]
    redirect_to '/'
  end
end
