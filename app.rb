require 'json'
require_relative 'lib/data_helper'


# Print today's date
# Sum totals for report
	# Total number of objectives
	# *Total number of categories containing objectives

# For each objective in the data set:
  # Print the objective
  # Print the a list of ccss-grade-mapping
  # Calculate and print the total number of ccss-grade-mapping tags
  # Calculate and print the total amount of sales
  # Calculate and print the the grade the objective is most emphasized
		# Print formula/algoryithm for finding the emphasis

# For each category in the data set:
  # Print the name of the category
  # Count and print the number of the objectives in the collection
  # Calculate and print the grade objectives in the collection are most emphasized
		# Print formula/algorithm for finding the emphasis
  # Calculate and print the total number of ccss connections

# By-grade reports
	# All objectives mapped to a certain grade
	# Only 'emphasized' objectives mapped to the grade
	# Search by CCSS and received list of OLO mapped to that CCSS code


	# PRINT REPORTS TO REPORT.TXT
	# ------------------------
	f = File.open("report.txt", "w")
	old_out = $stdout
	$stdout = f
	puts category_list
	puts objective_list
	f.close

	$stdout = old_out
	puts "goodbye"
