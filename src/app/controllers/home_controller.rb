# frozen_string_literal: true

# Controller for the home page already made for you
class HomeController < ApplicationController
  # No sign in needed to access these pages
  # Overrides ApplicationController's instructions to check for login by default
  skip_before_action :authenticate_user!

  # GET /
  #
  # This method is empty, yet it works?
  # Rails controller methods can be completely empty and work just fine.
  # It's the name of the method matching to a html.erb file that
  # makes the link between the files.
  # Find me @ app/views/home/index.html.erb
  #
  # Also, any local variable made inside this method will also exist
  # in the view to be displayed. Do not look up information within the
  # view itself. Do it here, please!
  
  def index
    
  end

  def calculate
    
    #Store user input in variables and convert them to floats
    @expenses = params["monthly_necessary_expenses"].to_f
    @savings = params["savings"].to_f

    #Calculate the number of months the user has until they become homeless if they lost their job
    
    @months = @savings/@expenses
    
    @statement = ""

    #Convert @months to weeks, days, or years according to what makes sense
    if @months < 1
      @weeks = @months * 4
      if @weeks >= 1
        if @weeks.to_i == 1
          @statement = @weeks.to_i.to_s + " week"
        else
          @statement = @weeks.to_i.to_s + " weeks"
        end
      else
        @days = @months * 30
        if @days.to_i == 1
          @statement = @days.to_i.to_s + " day"
        else
          @statement = @days.to_i.to_s + " days"
        end
      end
    elsif @months >= 12
      @years = @months / 12
      if @years.to_i == 1
        @statement = @years.to_i.to_s + " year"
      else
        @statement = @years.to_i.to_s + " years"
      end
    else
      if @months.to_i == 1
        @statement = @months.to_i.to_s + " month"
      else
        @statement = @months.to_i.to_s + " months"
      end
    end
  end

end
