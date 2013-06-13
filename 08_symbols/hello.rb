#!/usr/bin/env ruby

# WTF are we doing with these colons?
puts :"Hello, world!"
puts "#{:Hello}, #{:world}!"

# Here's a handy guide:
# http://www.troubleshooters.com/codecorn/ruby/symbols.htm

# The major takeaway for being able to read this code is to understand that these things, called symbols, are essentially global constants.
# They cannot be declared or assigned.  They are referenced by a string representation preceded by a colon.
# All symbols with the same string representation are the SAME OBJECT.
# Above, we were using the symbols as an obtuse way to reference a string.  This is not a realistic use.
# On the other hand, if there are global tokens that should always reference the same thing:

def planetaryWelcome(planet)
	if [:mercury, :venus, :earth, :mars, :jupiter, :saturn, :uranus, :neptune].include? planet
		puts "Welcome to planet #{planet}!"
	else
		puts "#{planet} is not a planet!"
		if [:moon].include? planet
			puts "Come to the dark side, we have cake."
		elsif [:pluto].include? planet
			puts "Sorry dude."
		end
	end
end

# You might think this shoud work:
puts
puts "String earth!"
planetaryWelcome("earth")

# But the string "earth" is not the same as the symbol :earth!
puts
puts "Earth equality?"
puts "earth" == :earth

puts
puts "Symbolic earth!"
planetaryWelcome(:earth)

puts
puts "Symbolic pluto!"
planetaryWelcome(:pluto)

# See what we did there?  Instead of referencing the strings "earth", "mars", etc. we referenced the symbols, which are basically global constants with a string representation.
