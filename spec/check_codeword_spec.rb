require "check_codeword"

RSpec.describe "check_codeword method" do
	it "return correct if codeword is horse" do
		result = check_codeword("horse")
		expect(result).to eq "Correct!, Come in."
	end
	
	it "return hint if word starts with h and ends with e" do
		result = check_codeword("hence")
		expect(result). to eq "Close, but nope."
	end
	
	it "return hint if word starts with h and ends with e" do
		result = check_codeword("hole")
		expect(result). to eq "Close, but nope."
	end
	
	it "return hint if word starts with h and ends with e" do
		result = check_codeword("horrible")
		expect(result). to eq "Close, but nope."
	end
	
	it "return wrong in any other case" do
		result = check_codeword("apprenticeship")
		expect(result).to eq "WRONG!"
	end
end