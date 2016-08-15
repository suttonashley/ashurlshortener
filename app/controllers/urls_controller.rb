class UrlsController < ApplicationController
  def new
    @url = Url.create(name: params[:term])
  end

  def create
  end

  def index
    @url = Url.all
  end

  def destroy
  end
end
