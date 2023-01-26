class MathController < ApplicationController

  def minus
    render({ :template => "math_templates/minus_form.html.erb" })
  end
  
  def subtraction
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @second_num - @first_num

    render({ :template => "math_templates/subtraction.html.erb" })
  end


  def add
    render({ :template => "math_templates/add_form.html.erb" })
  end
  
  def addition
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @second_num + @first_num

    render({ :template => "math_templates/addition.html.erb" })
  end

  def multiply
    render({ :template => "math_templates/multiply_form.html.erb" })
  end
  
  def multiplication
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @second_num * @first_num

    render({ :template => "math_templates/multiplication.html.erb" })
  end

  def divide
    render({ :template => "math_templates/divide_form.html.erb"})
  end

  def division
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @first_num / @second_num

    render({ :template => "math_templates/division.html.erb"})
  end

end
