require 'liquid'
require 'CSV'

file = File.read('./product_view.liquid.html')
template = Liquid::Template.parse(file)

hash = {}

CSV.foreach('./data.csv') do |row|
  hash[row[0].to_s] = row[1]
end

puts hash.inspect

File.open("output.html", 'w') do |f|
  f.write template.render(hash)
end
