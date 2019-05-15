require "date"
require "Birthday_list"
describe "Birthday_list" do
  let(:list) {
    Birthday_list.new
  }
  it "can store my friends' birthdays" do
    expect(list).not_to be_nil
  end

  it "can display my friends' names and birthdays" do
    expect(list.show).to include("Hey Bob, your birthday is 13-01-2000")
  end

  it "can add a person and their DOB" do
    list.add("John", "12-03-2019")
    expect(list.storage).to include({ "John" => "12-03-2019" })
  end

  it "knows today's date and checks if it is someones birthday" do
    date = Date.today
    convert_date = list.convert_today
    list.add("Emma", convert_date)
    expect(list.whose_birthday).to include("It's Emma's birthday today! They are 0 years old!")
  end
end
