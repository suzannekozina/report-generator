# require_relative 'by_grade'
# require_relative 'errors'
require 'json'
### Getting going - Much of the following code will probably end up in app.rb;
def setup_files
	path = File.join(File.dirname(__FILE__), '../data/lobjectives.json')
	file = File.read(path)

  $collection_hash = JSON.parse(file)
	$report_file = File.new("data/report.txt", "w+")
end

def create_report
  print_header
  print_date
  print_category_list
end

def print_header
$report_file.puts"
 __   ___  __   __   __  ___
|__) |__  |__) /  \\ |__)  |
|  \\ |___ |    \\__/ |  \\  |
"
end

def print_date
    date = Time.now.strftime("%m/%d/%Y")
    $report_file.puts date
end

def print_category_list
  $collection_hash["collection"].each do |category|
    $report_file.puts category["category"]
    $report_file.puts "********************************************"
  end
	$report_file.puts $collection_hash["collection"].length
end

# Each 'objective' must have a parent category

def start
  setup_files # load, read, parse, and create the files
  create_report # create the report!
end
start
