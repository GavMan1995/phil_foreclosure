require 'csv'
class HomeController < ApplicationController
  before_action :rillow
  def index
  end


  def import
    Home.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

  private

  def rillow
    @rillow = Rillow.new(ENV['ZWSID'])
  end
end
