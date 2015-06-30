# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog

	bContinue = true
	bFirst = true

	puts "Shakil the dog is barking.."

	begin
		print !bFirst ? "---\nShakil the dog is still barking..\n" : ""
		puts "Give Shakil a command"
		sCommand = gets.chomp

		case sCommand
			when "woof"
				puts "Shakil: WOOF WOOF WOOF"
			when "shakil stop", "shakil STOP!", "treat"
				puts "** stops barking for a few seconds ** "
			when "meow"
				puts "woof woof woof woof woof"
			when "go away"
				bContinue = false
			else 
				puts "Shakil: woof"
		end

		bFirst = false

	end while bContinue

	puts "Shakil went away"

end
 
# Run our method
shakil_the_dog