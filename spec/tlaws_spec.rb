require "spec_helper"

RSpec.describe Tlaws do
  it "has a version number" do
    expect(Tlaws::VERSION).not_to be nil
  end

  let(:numbersapi){ Tlaws::Numbers.new	}
  
  types = %w!math year date trivia! 

  describe '.random' do 
	  
	  it "get an answer" do
	  	res = numbersapi.random.math
	  	expect(res).to be_instance_of Hash
	  end

  	types.each do |type|
	  	describe ".#{type}" do
		  	it "get a '#{type}' response on '#{type}' request" do
		  		res = numbersapi.random.send(type)
		  		expect(res["type"]).to eq type
		  	end
		  end
		  describe ".#{type}(min, max)" do
		  	it "get a random '#{type}' number in a range" do
		  		min = 10
		  		max = 20
		  		res = numbersapi.random(min, max).send(type)
		  		expect(res["number"]).to be_between(min, max)
		  	end
		  end
  	end
	end

	describe '[number]' do
		it "get an answer" do
	  	res = numbersapi[42].math
	  	expect(res).to be_instance_of Hash
	  end
	  types.each do |type|
	  	describe ".#{type}" do
		  	it "get a '#{type}' response on '#{type}' request" do
		  		expect(numbersapi[15].send(type)["type"]).to eq type
		  	end
	  	end
	  end
	end

end
