module CalculateHelper
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

    def generate_years(months)
        years = months / 12
        if years.to_i == 1
            return years.to_i.to_s + " year"
        else
            return years.to_i.to_s + " years"
        end
    end

    def generate_months(months)
        if months.to_i == 1
            statement = months.to_i.to_s + " month"
        else
            statement = months.to_i.to_s + " months"
        end
    end
end