class UrlsController < ApplicationController
  def new
    @url = Url.create(name: params[:term], short: (0...5).map { ('a'..'z').to_a[rand(26)] }.join)
  end

  def create
  end

  def index
    @urls = Url.all
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
