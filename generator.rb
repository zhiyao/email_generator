require 'liquid'
require 'CSV'

file = File.read('./product_view.liquid.html')
template = Liquid::Template.parse(file)

hash = {}

csv_contents = CSV.read('./data.csv')
headers = csv_contents.shift

puts "Headers"
puts headers.inspect

CSV.foreach('./data.csv') do |row|
  next if $. == 1
  headers.each_with_index do |header, index|
    hash[header] = row[index]
  end

  puts "Generating output_#{$.-1}.html"
  puts hash.inspect

  File.open("output_#{$.-1}.html", 'w') do |f|
    f.write template.render(hash)
  end
end
