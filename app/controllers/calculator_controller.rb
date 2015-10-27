class CalculatorController < ApplicationController
  def plus
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    @sum = @number_1 + @number_2
  end

  def minus
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    @difference = @number_1 - @number_2
  end

  def calculate
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    case params[:operation]
      when 'plus', 'add'
        handle_plus
      when 'minus'
        @result = @number_1 - @number_2
        @operation = '-'
      when 'multiply'
        @result = @number_1 * @number_2
        @operation = '*'
      when 'divide'
        @result = @number_1 / @number_2
        @operation = '/'
    end
  end

  private

  def handle_plus
    @result = @number_1 + @number_2
    @operation = '+'
  end
end
