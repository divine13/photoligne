class PostsController < ApplicationController
  before_filter :find_portfolio
  before_filter :find_post, only: [:edit, :update]

  def index

  end

  def new
    @post = @port.posts.build
    #3.times { @post.assets.build}
  end

  def create
    @post = @port.posts.build(post_params)
     if @post.save
      flash[:success] = "new service created"
      redirect_to portfolio_posts_path
    else
      render :new
    end
  end

  def show
     	#redirect_to root_path
   @all_posts = @port.posts.all
  end
  def update
  end


  def edit

  end
    def destroy
     # @post =  @port.posts.find(params[:id])
     #@post.destroy
     # flash[:notice] = "Picture has been deleted"
     # redirect_to root_path
    end
 private

   def find_portfolio
     @port = Portfolio.find(params[:portfolio_id])
   end

  def find_post
    @post = @port.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit!
  end
end
