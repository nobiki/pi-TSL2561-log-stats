class StaticPagesController < ApplicationController
  def home
    @luxes = Lux.order("recorded_at desc").limit(288)
    # raise @luxes.inspect
    # exit
    #
    # Graph.where("id = 1").each do |i|
    Graph.order("updated_at desc").limit(1).each do |i|
      @graph = i.graph64
    end
  end

  def realtime
  end
end
