class MathController < ApplicationController

  def minus
    #render({ :template => "math_templates/subtraction.html.erb" })

    

    render({ :template => "math_templates/minus_form.html.erb" })
  end

end
