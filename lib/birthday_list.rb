class Birthday_list
  def initialize
    @storage = [{"Alison"=> "05-05-1900"}, {"Bob" => "13-01-2000"}, {"Mary Poppin" => "09-09-1819"}]
  end

  def show
    @storage
  end

  def whose_birthday(date)
    @storage.each { |hash|
      if hash.values.join == date
        year = (hash.values.join).split("-")
        year = year[2].to_i
        text = "It's #{hash.keys.join}'s birthday today! They are #{2019 - year} years old!"
        return text
      end
    }
  end
end
