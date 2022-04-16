module CalculateHelper
    def generate_statement(expenses, savings)
        #Calculate the number of months the user has until they become homeless if they lost their job
    
        months = savings/expenses
        
        statement = ""

        #Convert months to weeks, days, or years according to what makes sense
        if months < 1
            weeks = months * 4
            if weeks >= 1
                if weeks.to_i == 1
                    statement = weeks.to_i.to_s + " week"
                else
                    statement = weeks.to_i.to_s + " weeks"
                end
            else
                days = months * 30
                if days.to_i == 1
                    statement = days.to_i.to_s + " day"
                else
                    statement = days.to_i.to_s + " days"
                end
            end
        elsif months >= 12
            years = months / 12
            if years.to_i == 1
                statement = years.to_i.to_s + " year"
            else
                statement = years.to_i.to_s + " years"
            end
        else
            if months.to_i == 1
                statement = months.to_i.to_s + " month"
            else
                statement = months.to_i.to_s + " months"
            end
        end
        return statement
    end
end