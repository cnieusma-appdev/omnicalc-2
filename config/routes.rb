Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "math_templates", :action => "minus" })

  get("/math_templates/subtract", { :controller => "math_templates", :action => "minus" })

end
