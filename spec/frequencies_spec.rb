require_relative "../frequencies"

describe "#most_frequent_word" do
  it "should return an empty hash if given an empty string" do
    expect(most_frequent_word("")).to eq({})
  end

  it "should return the right words" do
    result = most_frequent_word("the cow jumped over the moon")
    expect(result["the"]).to eq(2)
  end
end
