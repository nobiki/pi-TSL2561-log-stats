class StaticPagesController < ApplicationController
  def home
    @luxes = Lux
  end

  def help
  end
end
