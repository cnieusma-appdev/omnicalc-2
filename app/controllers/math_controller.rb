class MathController < ApplicationController

  

  def minus
    render({ :template => "math_templates/minus_form.html.erb" })
  end
  
  def subtraction
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @first_num - @second_num

    render({ :template => "math_templates/subtraction.html.erb" })
  end
end
