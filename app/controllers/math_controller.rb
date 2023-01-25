class MathController < ApplicationController

  def minus
    render({ :template => "math_templates/subtraction.html.erb" })
  end

end
