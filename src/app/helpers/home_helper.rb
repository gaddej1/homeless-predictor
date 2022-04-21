# frozen_string_literal: true

# Helper methods accessable for views within the home folder
module HomeHelper
    #This function returns all of the counties in New Jersey.
    def county_options()
        return ["Atlantic", "Bergen", "Burlington", "Camden", "Cape May", "Cumberland", "Essex", "Gloucester", "Hudson", "Hunterdon", "Mercer", "Middlesex", "Monmouth", "Morris", "Ocean", "Passaic", "Salem", "Somerset", "Sussex", "Union", "Warren"]
    end
end
