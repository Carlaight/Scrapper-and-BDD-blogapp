require_relative '../lib/depute.rb'

describe "get_deputy_full_name" do
  it "should not to be nill" do
    expect(get_deputy_full_name).not_to be_nil
  end
  
  it "should return an array" do
    expect(get_deputy_full_name.class).to eq(Array)
  end
  
end
