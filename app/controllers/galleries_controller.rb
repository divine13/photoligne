class GalleriesController < ApplicationController
  before_filter :set_gallery, only: [:show, :edit, :update, :destroy]

  def index
  @galleries = Gallery.all.reverse_order
  @gposts = Gpost.all.limit(30)
  end

  def new
    @gallery = Gallery.new
  end
  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      flash[:success] = "New Photo added to Gallery"
      redirect_to @gallery
    else
      redirect_to :back
    end
  end
  def show

  end
private
  def gallery_params
    params.require(:gallery).permit!
  end
  def set_gallery
    @gallery = Gallery.find(params[:id])
  end
end
