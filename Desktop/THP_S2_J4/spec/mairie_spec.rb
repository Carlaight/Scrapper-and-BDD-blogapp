require_relative '../lib/mairie.rb'

describe "get_townhall_urls method" do
  it "should not to be nill" do
    expect(get_townhall_urls).not_to be_nil
  end

  it "should return an array" do
    expect(get_townhall_urls.class).to eq(Array)
  end
end
