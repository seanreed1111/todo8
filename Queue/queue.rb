# unshift(arg) adds arg to the 0th element of the array, and returns the new array
# pop removes and returns the last (n-1th) element of the array

# therefore, to write a queue let the front of the queue be the last element
# in the array, and the back of the queue be the zeroth element of the array
# it is counterintuitive, but allows you to implement a queue using methods that 
# are already optimized.

class Queue

	attr_accessor :queue

	def initialize(new_queue=[])
		@queue = new_queue
	end

	def add(new_element)
		queue.unshift(new_element)
	end

	def next
		queue.pop
	end
end
