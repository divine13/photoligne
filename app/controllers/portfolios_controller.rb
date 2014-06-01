class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  before_action :find_post, only: [:show]

  def index
       @ports = Portfolio.all

  end

  def new
      @port = Portfolio.new
  end

  def create
    @port = Portfolio.new(user_params)
    if @port.save
      flash[:success] = "portfolio created"
      redirect_to portfolios_path
    else
      render 'portfolios/new'
    end
  end
  def show
    #@post = @port.posts.find(params[:portfolio_id])
    # render 'posts/show'
  end
     def edit

     end
  def update

  end
  def destroy

  end
 private
  def set_portfolio
    @port = Portfolio.find(params[:id])
  end
   def find_post
     @post = @port.posts.find(params[:id])
   end
  def user_params
    params.require(:portfolio).permit! #not safe though
  end
end
