require 'csv'
class HomeController < ApplicationController
  before_action :rillow
  def index
    @homes = Home.all
  end


  def import
    Home.import(params[:file])
    homes = Home.all
    homes.each do |home|
      address = home.propad
      city = home.prop_city
      state = home.prop_state
      zillow = @rillow.get_search_results("#{address}", "#{city}, #{state}")
      zillow.to_hash
      zestimate = zillow.find_attribute 'zestimate'
      if  zestimate == nil
        zestimate = "no zestimate available"
      elsif zestimate != nil
        zestimate = zillow.find_attribute 'zestimate'
        zestimate = zestimate.first.first[1].first["content"].to_i
      end
      Home.update(home.id, zestimate: zestimate)
    end
    redirect_to root_url, notice: "Products imported."
  end

  private

  def rillow
    @rillow = Rillow.new(ENV['ZWSID'])
  end
end
