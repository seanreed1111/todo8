#variables and methods needed
	#instance variable @line --> type array
	# method take_a_number(name) --> appends a number to their name, and places them at the back of the line
	#method  now_serving  --> removes the customer who is first in line and returns their name

#implement DeliCounter using pop and shift

#testing of methods pop, push,  
array = %w(a b c d e f)
puts "array is now #{array}"
puts array.pop
puts "after pop, array is now #{array}"
puts array.push "g"
puts "after push 'g', array is now #{array}"
puts array.shift 1
puts "after shift(1) array is now #{array}"
puts array.unshift(1)
puts "after unshift(1)  array is now #{array}"

# unshift(arg) adds arg to the 0th element of the array, and returns the new array
# pop removes and returns the last (n-1th) element of the array

# therefore, to write a queue let the front of the queue be the last element
# in the array, and the back of the queue be the zeroth element of the array
# it is counterintuitive, but allows you to implement a queue using methods that 
# are already optimized.

class Queue

	attr_accessor :queue

	def initialize(new_queue=nil)
		new_queue.nil? ? @queue = [] : @queue = new_queue
	end

	def add(new_element)
		self.queue.unshift(new_element)
	end

	def next now_serving
		self.pop
	end
end


class DeliCounter
	
	attr_accessor :line

	def initialize(line = nil)
		@line =[]
		@line = line if !line.nil?
	end

	def take_a_number(name)
		
	end

	def now_serving
	end

	def length
		@line.length
	end
end