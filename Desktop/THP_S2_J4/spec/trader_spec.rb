require_relative '../lib/trader.rb'

describe "the crypto_scrapper method" do
  it "should not to be nill" do
    expect(crypto_scrapper).not_to be_nil
  end
  
  it "should return an array of hashes" do
    expect(crypto_scrapper.class).to eq(Array)
  end
  
end
