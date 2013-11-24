require './queue'

my_queue = Queue.new(%w(a b c d e f))
my_queue2 = Queue.new(%w(1 2 3 4 5 6))
my_queue3 = Queue.new(%w(alpha beta gamma delta))
my_queue4 = Queue.new()

#note: Queues are FIFO. In the implementation, the back of the queue is the front of the array

describe Queue, "add" do 

	
 	it "should accept a person's name, put them in the back of the queue, and return the new queue" do
 		my_queue.add("Alex").should eq(["Alex", "a", "b", "c", "d", "e","f"])
 	end 
end


describe Queue, "next" do

 	it "should return the name of the person who is first in line and delete the person from queue" do	
 		my_queue2.next.should eq("6")
 	end

	it "should delete the first item from queue" do
 		my_queue2.queue.should eq(%w(1 2 3 4 5))
 	end
end


describe Queue, "initialize" do

	it "should make a new queue composed of the n elements of the array " do
 		my_queue3.queue.should eq(["alpha", "beta", "gamma", "delta"])
 	end

 	it "should return an empty array if no argument is passed to new" do
 		my_queue4.queue.should eq([])
 	end
end