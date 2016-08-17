class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.create(name: params[:term], short: (0...5).map { ('a'..'z').to_a[rand(26)] }.join)
    redirect_to urls_path
  end

  def index
    @urls = Url.all
  end

  def edit
  end

  def show
    if params[:id].to_i != 0
      @url = Url.find(params[:id])
      redirect_to "http://#{@url.name}"
    else
      @url = Url.find_by(short: params[:id])
      redirect_to "http://#{@url.name}"
    end

    # @url = Url.find_by(name: "http://#{params[:id]}")
    # redirect_to "http://#{@url.name}"
  end

  def destroy
  end


end
