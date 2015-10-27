class ColorController < ApplicationController
  def color
    @color = params[:color]
  end
end
