require_relative 'errors'
require 'json'

#***This file writes new data objects to the JSON file***


  tempHash = {
      "key_a" => "val_a",
      "key_b" => "val_b"
  }

  File.open("data/lobjectives.json","a+") do |f|
    f.write(tempHash.to_json)
  end
