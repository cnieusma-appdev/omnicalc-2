Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "math", :action => "minus" })

  get("/subtract", { :controller => "math", :action => "minus" })
  get("/wizard_subtract", { :controller => "math", :action => "subtraction" })

  get("/add", { :controller => "math", :action => "add" })
  get("/wizard_add", { :controller => "math", :action => "addition" })

  get("/multiply", { :controller => "math", :action => "multiply" })
  get("/wizard_multiply", { :controller => "math", :action => "multiplication" })

  get("/divide", { :controller => "math", :action => "divide" })
  get("/wizard_divide", { :controller => "math", :action => "division" })

end
