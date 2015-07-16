class PathsController < ApplicationController
  def show
  	@path = Path.friendly.find(params[:id])
  end
end
