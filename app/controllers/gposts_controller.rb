class GpostsController < ApplicationController
  before_filter :find_gallery
  before_filter :find_gpost, only: [:show, :edit, :update, :destroy]

  def index
    @gposts = @gallery.gposts.all
  end

  def new
    @gpost = @gallery.gposts.new
  end

  def create
    @gpost = @gallery.gposts.build(gpost_params)
    if @gpost.save
      flash[:success] = "Picture Added to this Gallery "
      redirect_to gallery_gposts_url
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit

  end
  def update

  end

  def find_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end
  def gpost_params
    params.require(:gpost).permit!
  end
  def find_gpost
    @gpost = @gallery.gposts.find(params[:id])
  end
end
