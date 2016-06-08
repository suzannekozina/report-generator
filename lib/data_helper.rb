# require_relative 'by_grade'
# require_relative 'errors'
require 'json'
### Getting going - Much of the following code will probably end up in app.rb;
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

def category_list
  $collection_hash["collection"].each do |category|
		puts category["category"]
  end
	puts "********************************************"
	puts $collection_hash["collection"].length
end

# Each 'objective' must have a parent category
setup_files
category_list
