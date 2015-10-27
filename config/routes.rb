Rails.application.routes.draw do
  # get ':number1/plus/:number2' => 'calculator#plus'
  # get ':number1/minus/:number2' => 'calculator#minus'
  get ':number1/:operation/:number2' => 'calculator#calculate'

  get ':color' => 'color#color'
end
