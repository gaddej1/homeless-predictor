class HomelessShelter < ApplicationRecord
    def self.retrieve_homeless_shelters(county_entered)
        HomelessShelter.where(county: county_entered)
    end
end
