Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "math", :action => "minus" })

  get("/subtract", { :controller => "math", :action => "minus" })
  get("/wizard_subtraction", { :controller => "math", :action => "subtraction" })

  get("/add", { :controller => "math", :action => "add" })
  get("/wizard_addition", { :controller => "math", :action => "addition" })

end
