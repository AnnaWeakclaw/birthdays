require "Birthday_list"
describe "Birthday_list" do

  let(:list) {
    Birthday_list.new
  }
  it "can store my friends' birthdays" do

    expect(list).not_to be_nil
  end

  it "can display my friends' names and birthdays" do
    expect(list.show).to include({"Bob" => "13-01-2000"}) 
  end

  it "can check whose birthday it is today" do
    expect(list.whose_birthday("09-09-1819")).to include("It's Mary Poppin's birthday today! They are 200 years old!")
  end
end