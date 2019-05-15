require 'date'
class Birthday_list
  attr_reader :storage

  def initialize
    @storage = [{ "Alison" => "15-05-1900" }, { "Bob" => "13-01-2000" }, { "Mary Poppin" => "09-09-1819" }]
  end

  def show
    display = []
    @storage.map {|hash|
    display.push("Hey #{hash.keys.join}, your birthday is #{hash.values.join}")
    }
    display
  end

  def whose_birthday
    today = convert_today
    today = today.split("-")
    text = []
    @storage.each { |hash|
        exact_date = (hash.values.join).split("-")
        if exact_date[0] == today[0] && exact_date[1] == today[1]
        year = exact_date[2].to_i
        text.push("It's #{hash.keys.join}'s birthday today! They are #{2019 - year} years old!")
      end
    }
    text
  end

  def add(name, date)
    new_person = { name => date }
    @storage.push(new_person)
  end

  def convert_today
    today = Date.today #format yyyy-mm-dd to dd-mm-yyyy
    date = today.to_s.split("-")
    convert_date = []
    convert_date.push(date[2])
    convert_date.push(date[1])
    convert_date.push(date[0])
    convert_date = convert_date.join("-")
    convert_date
  end
end
