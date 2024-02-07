class PagesController < ApplicationController 

  def square 
    render({ :template => "actions/square"})
  end

  def square_results
    @number = params.fetch("number").to_f
    @result = @number * @number
    render({ :template => "actions/square_result"})
  end

  def square_root
    render({ :template => "actions/square_root"})
  end

  def square_root_results
    @number = params.fetch("square_root_number").to_f
    @result = Math.sqrt(@number).to_f
    render({ :template => "actions/square_root_results"}) 
  end

  def payment
    render({ :template => "actions/payment"})
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_f

    @r = (@apr / 100) / 12
    @n = @years * 12
  
    @numerator = @r * (@principal)
    @denominator = 1 - ((1 + @r)**(-@n))
  
    @result = @numerator / @denominator

    render({ :template => "actions/payment_results"})
  end


  def random

    render({ :template => "actions/random"})
  end

  def random_results 
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f

    @result = rand(@min..@max)

    render({ :template => "actions/random_results"})
  end

end
