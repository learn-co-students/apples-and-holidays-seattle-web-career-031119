#holiday_supplies = {
#  :winter => {
#    :christmas => ["Lights", "Wreath"],
#    :new_years => ["Party Hats"]
#  },
#  :summer => {
#    :fourth_of_july => ["Fireworks", "BBQ"]
#  },
#  :fall => {
#    :thanksgiving => ["Turkey"]
#  },
#  :spring => {
#    :memorial_day => ["BBQ"]
#  }
#}

require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

#holiday_supplies = {
#  :winter => {
#    :christmas => ["Lights", "Wreath"],
#    :new_years => ["Party Hats"]
#  },

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
  supplies << supply
end
end

#holiday_supplies = {
#  :spring => {
#    :memorial_day => ["BBQ"]

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
end
end

#holiday_supplies = {
#  :fall => {
#    :thanksgiving => ["Turkey"]
#  },

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].map do |holiday, supply|
    supply
 end
 array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_plus_supplies|
    puts (season.to_s.capitalize! + ":")
  holiday_plus_supplies.each do |holiday, supplies|
    array = holiday.to_s.split("_")
    capitalize_array = []
      array.each do |word|
          capitalize_array << word.capitalize!
        end

    final_holiday = capitalize_array.join (" ")

    final_supplies = supplies.join (", ")

    puts ("  " + final_holiday + ": " + final_supplies)

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
array = []
  holiday_hash.map do |season, holiday_supply|
    holiday_supply.map do |holiday_name, supplies|
    if supplies.include? ("BBQ")
      array.push(holiday_name)
  end
end
end
array
end
