require 'greet'

RSpec.describe "greet method" do
	it "return \"Hello, \#\{name\}\"" do
		result = greet("Lorenzo")
		expect(result).to eq "Hello, Lorenzo"
	end
end