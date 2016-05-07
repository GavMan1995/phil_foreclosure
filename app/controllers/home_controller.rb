class HomeController < ApplicationController
  before_action :rillow
  def index
    places = []
    CSV.foreach('tmp/phills_sheet.csv', headers: true, header_converters: :symbol) do |row|
      places << { propad: row[:propad], prop_city: row[:prop_city], prop_state: row[:prop_state], owner: row[:owner] }
    end
    @result = rillow.get_search_results('2541 E 2940 S','SALT LAKE CITY, UT')
    @result.to_hash
    zestimate = @result.find_attribute 'zestimate'
    @zestimate = zestimate.first.first[1].first["content"].to_i
    binding.pry
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
