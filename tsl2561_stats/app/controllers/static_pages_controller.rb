require "net/http"

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
    # Lux.order("recorded_at desc").limit(1).each do |i|
    #   @lux = i.lux
    # end

    # res = Net::HTTP.start("tsl2561.pi.oji.0j0.jp") do |http|
    res = Net::HTTP.start("192.168.11.31") do |http|
      http.get "/"
    end

    @lux = res.body
  end
end
