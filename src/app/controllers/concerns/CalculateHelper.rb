module CalculateHelper

    #This function generates a statement regarding how long the user has until
    #they would become homeless if they lost their job.
    def generate_statement(expenses, savings)
        #Calculate the number of months the user has until they become homeless if they lost their job
        months = savings/expenses
        
        statement = ""

        #Convert months to weeks, days, or years according to what makes sense
        if months < 1
            statement = generate_days_or_weeks(months)
        elsif months >= 12
            statement = generate_years(months)
        else
            statement = generate_months(months)
        end
        return statement
    end

    #If the amount of time is less than a month, then the amount of time
    #has to be converted to days or weeks, which is what this function does.
    def generate_days_or_weeks(months)
        weeks = months * 4
        if weeks >= 1
            if weeks.to_i == 1
                return weeks.to_i.to_s + " week"
            else
                return weeks.to_i.to_s + " weeks"
            end
        else
            days = months * 30
            if days.to_i == 1
                return days.to_i.to_s + " day"
            else
                return days.to_i.to_s + " days"
            end
        end
    end

    #If the amount of time is greater than or equal to 12 months,
    #then the amount of time has to be converted to years, 
    #which is what this function does.
    def generate_years(months)
        years = months / 12
        if years.to_i == 1
            return years.to_i.to_s + " year"
        else
            return years.to_i.to_s + " years"
        end
    end

    #This function determines if a singular or plural version of month
    #should be included in the statement depending on the amount of time.
    def generate_months(months)
        if months.to_i == 1
            statement = months.to_i.to_s + " month"
        else
            statement = months.to_i.to_s + " months"
        end
    end
end