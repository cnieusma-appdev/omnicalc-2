class OtherController < ApplicationController

  def street_to_coords
    # @first_num = params.fetch("first_num").to_f
    # @second_num = params.fetch("second_num").to_f
    # @result = @first_num / @second_num

    render({ :template => "other_templates/coordinates.html.erb"})
  end

end
