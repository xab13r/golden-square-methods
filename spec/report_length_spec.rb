require "report_length"

RSpec.describe("report_length method") do
	it "return length of the string" do
		result = report_length("hello")
		expect(result).to eq "This string was 5 characters long."
	end
	
	it "return length of the string" do
		result = report_length("makers")
		expect(result).to eq "This string was 6 characters long."
	end
	
	it "return length of the string" do
		result = report_length("here we got this is a pretty long string")
		expect(result).to eq "This string was 40 characters long."
	end
	
end