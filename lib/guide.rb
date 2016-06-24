require 'restaurant.rb'
class Guide

	def initialize(path=nil)
		Restaurant.filepath = path
		if Restaurant.file_usable?
			puts "Found restaurant file."
		elsif Restaurant.create_file
			puts "Created restaurant file."
		else
			puts "Exiting.\n\n"
			exit!
		end	
	end

	def launch!
		introduction

		conclusion
	end	
	
	def introduction
		puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
		puts "This is an interactive guide to help you find the food you crave.\n\n"
	end

	def conclusion
		puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
	end
end


