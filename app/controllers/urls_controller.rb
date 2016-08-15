class UrlsController < ApplicationController
  def new
    @url = Url.create(name: params[:term])
  end

  def create
  end

  def index
    @urls = Url.all
  end

  def destroy
  end
end
