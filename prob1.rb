require 'csv'

def csv_to_array_of_hashes(csv_file) #create array from csv data
  csv_data = [] #initialize csv

  CSV.foreach(csv_file, headers: true) do |row| #read csv line by line make first line header
    csv_data << row.to_h
  end

  csv_data #return the array
end

#test case
csv_file = 'data.csv'
output = csv_to_array_of_hashes(csv_file)
puts output
