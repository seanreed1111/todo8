#TODO8: Deli Counter
# Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.
 
# Post your links here!

# needed
# 	instance variable @line --> type array
# 	method take_a_number(name) --> appends a number to their name, and places them at the back of the line
# 	method  now_serving  --> removes the customer who is first in line and returns their name
 
require './deli_counter'

my_deli = DeliCounter.new
my_deli.line = ["1. Ashley", "2. Steve", "3. Blake"]

describe DeliCounter, "take_a_number" do 

 	it "should accept a person's name, assign them a number in the back of the line, and return the adjusted line" do
 		my_deli.take_a_number("Alex").should eq(["1. Ashley", "2. Steve", "3. Blake", "4. Alex"])
 	end 

end

describe DeliCounter, "now_serving" do

 	it "should return the name of the person who is first in line" do
 		my_deli.now_serving.should eq("Ashley")
 	end

 	it "should remove him/her from the queue, and update the numbers of all remaining people in the queue, if any" do
 		my_deli.line.should eq(["1. Steve", "2. Blake", "3. Alex"])
 	end

end
 	
 


