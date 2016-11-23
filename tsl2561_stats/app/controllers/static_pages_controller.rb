class StaticPagesController < ApplicationController
  def home
    @luxes = Lux.order("recorded_at desc").limit(100)
    # raise @luxes.inspect
    # exit
  end

  def help
  end
end
