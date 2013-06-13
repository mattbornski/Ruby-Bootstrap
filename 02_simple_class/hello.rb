class HelloWorld
	def initialize(name)
		# The @ sign indicates that you're referring to an instance variable
		# In this case, @name is the name of this instance of the HelloWorld class.
		# Pythonically this would be similar to self.name
		# In C++ or Java it would be similar to this.name
		@name = name
	end
	def sayHi
		# String formatting can be done this way.
		# There are many other ways as well.
		# Note that most non-trivial string operations can only be done with double-quoted strings.
		puts "Hello, #{@name}!"
		# For instance this won't do the trick:
		#puts 'Hello, #{@name}!'
	end
end

hello = HelloWorld.new("world")
hello.sayHi()

# Guess what?  It appears that, strictly speaking, parentheses are optional for method invocations.
hello.sayHi

# And for object instantiations, which are just an invocation of a constructor method.
hello2 = HelloWorld.new "world"
hello2.sayHi

# Read more here:
# http://blog.mojotech.com/post/31812700196/a-fireside-chat-about-optional-parentheses
