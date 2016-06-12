# require_relative 'by_grade'
# require_relative 'errors'
require 'json'

	def setup_files
		path = File.join(File.dirname(__FILE__), '../data/lobjectives.json')
		file = File.read(path)

	  $collection_hash = JSON.parse(file)

	end

	def print_header
	puts"
	 __   ___  __   __   __  ___
	|__) |__  |__) /  \\ |__)  |
	|  \\ |___ |    \\__/ |  \\  |
	"
	end

	def print_date
	    date = Time.now.strftime("%m/%d/%Y")
	    puts date
	end

	# Each 'objective' must have a parent category
	def category_list
	  $collection_hash["collection"].each do |category|
			puts category["category"]
	  end
		puts "********************************************"
		puts $collection_hash["collection"].length
		puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	end

	def objective_list
	  total_objectives = 0
	  $collection_hash["collection"].each do |lobjectives|
	    puts "Category: #{lobjectives["category"]}"
	    lobjectives["lobjectives"]
	      lobjectives["lobjectives"].each do |objective|
	        puts objective["objective"]
	        total_objectives += 1
	      end
	    puts "********************************************"
	  end
	  puts "Total number of objectives in collection: #{total_objectives}"
	  puts "********************************************"
	end

	setup_files
	category_list
	objective_list
