# The Golden Square Challenges - Testing Methods with Equality

## Setting Up RSpec

```
# This assumes you have Ruby & RVM installed. If you don't, visit:
# https://rvm.io/ to install RVM.

# First, create a directory for your project
mkdir your-project-directory
cd your-project-directory

# Then, we're going to get you the latest Ruby
rvm get stable
rvm use ruby --latest --install --default

# Next, install bundler, which manages dependencies like RSpec
gem install bundler

# Create a bundler project
bundle init

# And add RSpec to your dependencies
bundle add rspec

# Generate an RSpec template
rspec --init

# Create a folder for your implementation code
mkdir lib

# And create a repository for your changes
git init .
git add .
git commit -m "Project setup"

# Then go and create a repository on github.com
# On the next screen after you have created the repository,
# follow the "Push an existing repository from the command line" section
# To push your project to your github repository
# It will look something like this...
git remote add origin YOUR_REMOTE_ADDRESS
git branch -M main
git push -u origin main
```

## Testing Methods

Example Method:
```
# File: lib/add_five.rb
def add_five(num)
  return num + 5
end
```

Example test for the method:
```
# File: spec/add_five_spec.rb
require 'add_five'

RSpec.describe "add_five method" do
  it "adds 5 to 3 to return 8" do
	result = add_five(3)
	expect(result).to eq 8
  end
end
```

## Exercises

Write tests for the following methods

```
# File: lib/greet.rb

def greet(name)
  return "Hello, #{name}!"
end
```

```
# File: lib/check_codeword.rb

def check_codeword(codeword)
  if codeword == "horse"
	return "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
	return "Close, but nope."
  else
	return "WRONG!"
  end
end
```

```
# File: lib/report_length.rb

def report_length(str)
  length = str.length
  return "This string was #{length} characters long."
end
```