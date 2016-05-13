class ArticlesController < ApplicationController
  def new
  end

  def create
    # TODO
    render plain: params[:article].inspect
  end
end
