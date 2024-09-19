require './lib/sub'

RSpec.describe Sub do
  let!(:sub) { Sub.new }

  describe "instance methods" do
    describe "#substrings" do
      it "returns a hash of how many times a word was used" do
        #  takes a word as the first argument and then an array of
        #  valid substrings (your dictionary) as the second argument.
        # It should return a hash listing each substring (case insensitive)
        # that was found in the original string and how many times it was found.
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        input = "below"
        result ={ "below" => 1, "low" => 1 }

        expect(sub.substrings(input, dictionary)).to eq(result)
      end

      it "can handle multiple words" do
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        input = "Howdy partner, sit down! How's it going?"
        result = {
          "down" => 1,
          "go" => 1,
          "going" => 1,
          "how" => 2,
          "howdy" => 1,
          "it" => 2,
          "i" => 3,
          "own" => 1,
          "part" => 1,
          "partner" => 1,
          "sit" => 1
        }

        expect(sub.substrings(input , dictionary)).to eq(result)
      end
    end
  end
end
