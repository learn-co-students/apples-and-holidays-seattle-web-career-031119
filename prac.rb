def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each {|key, value|
    value.each {|key, value|
      if value.include?("BBQ")
        array << key
      end
    }
  }
  array
end

holiday_hash = 
{
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
   
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each {|season, holiday|
    puts "#{season.capitalize}:"
    holiday.each {|holiday, supplies|
      holi_string = holiday.to_s.capitalize
      if holi_string.include?("_")
        holi_string = holi_string.split("_")
        for i in 0..holi_string.length - 1
          holi_string[i] = holi_string[i].capitalize
        end
        holi_string = holi_string.join(" ")
      end
      string = supplies.join(", ")
      puts "  #{holi_string}: #{string}"
    }
  }

end

 all_supplies_in_holidays(holiday_hash)
 

 
