# frozen_string_literal: true

# Controller for the home page already made for you
class HomeController < ApplicationController
  include CalculateHelper 
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
    @county = params["county"]

    @statement = generate_statement(@expenses, @savings)
    @homeless_shelters = HomelessShelter.retrieve_homeless_shelters(@county)

    @expenses = '%.2f' % @expenses.to_s
    @savings = '%.2f' % @savings.to_s
  end
end
