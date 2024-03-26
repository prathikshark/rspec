require 'rails_helper'

RSpec.describe Customer, type: :model do
 subject { Customer.new(first_name: "Jack", last_name: "Smith", phone: "3000500678" )}

  it "is not valid without a first_name" do
    subject.first_name=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end

  it "is valid with phone " do
    subject.phone=nil
    expect(subject).to_not be_valid
  end

  it "not valid if phone length is less than 10" do
    expect(subject.phone.length).to eq(10) 
  end

end
