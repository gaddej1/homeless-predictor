class HomelessShelter < ApplicationRecord

    #This function retrieves the entries in the Homeless Shelters table
    #that are in the county that the user entered.
    def self.retrieve_homeless_shelters(county_entered)
        HomelessShelter.where(county: county_entered)
    end
end
