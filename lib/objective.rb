require 'json'
require 'data_helper'
#***still working out the details here!***
Class Objective < DataHelper

  attr_reader :id, :category, :grades, :ccss

  def initialize(opts={})

    # Get last ID from the database if ID exists
    get_last_id
    # Set the ID if it was passed in, otherwise use last existing ID
    @id = opts[:id] ? opts[:id].to_i : @@count_class_instances
    # Increment ID by 1
    auto_increment if !opts[:id]
    # Set the brand, name, and price normally
    @category = opts[:category]
    @grades = opts[:grade_range]
    @ccss = opts[:ccss_mapping]
  end

  private

  # Reads the last line of the data file, and gets the id if one exists
  # If it exists, increment and use this value
  # Otherwise, use 0 as starting ID number
  def get_last_id
    file = File.dirname(__FILE__) + "/../data/lobjectives.json"
    last_id = File.exist?(file) ? JSON.read(file).last[0].to_i + 1 : nil
    @@count_class_instances = last_id || 0
  end

  def auto_increment
    @@count_class_instances += 1
  end

end
