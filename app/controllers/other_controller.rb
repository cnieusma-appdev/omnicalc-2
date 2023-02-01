class OtherController < ApplicationController

  def street_to_coords_form
    render({ :template => "other_templates/coordinates_form.html.erb"})
  end

  def street_to_coords_results
    @address = params.fetch("user_street_address")
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @address + "&key=" + ENV.fetch("GMAPS_KEY")
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    results_array = parsed_data.fetch("results")
    first_result = results_array.at(0)
    geometry_hash = first_result.fetch("geometry")
    location_hash = geometry_hash.fetch("location")

    @latitude = location_hash.fetch("lat")
    @longitude = location_hash.fetch("lng")
    
    render({ :template => "other_templates/coordinates.html.erb"})

  end

  def street_to_weather_form
    render({ :template => "other_templates/weather_form.html.erb"})
  end

  def street_to_weather_results
    
    # @address = params.fetch("user_street_address")
    # url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @address + "&key=" + ENV.fetch("GMAPS_KEY")
    # raw_data = open(url).read
    # parsed_data = JSON.parse(raw_data)
    # results_array = parsed_data.fetch("results")
    # first_result = results_array.at(0)
    # geometry_hash = first_result.fetch("geometry")
    # location_hash = geometry_hash.fetch("location")

    # @latitude = location_hash.fetch("lat")
    # @longitude = location_hash.fetch("lng")

    # darksky_url = "https://api.darksky.net/forecast/" + ENV.fetch("DARK_SKY_KEY") + "/" + @latitude + "," + @longitude

    render({ :template => "other_templates/weather.html.erb"})

  end

end
