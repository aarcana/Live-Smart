require_relative 'weather'
require_relative 'forecast'
require 'optparse'

options = {}

parser = OptionParser.new do|opts|
  opts.on('-c', '--city city', 'City') do |city|
    options[:city] = city;
  end
end

parser.parse!

forecasts = Weather.for("Kathmandu")

forecasts.each do |forecast|
  puts "#{forecast.datetime} -- #{forecast.temp} Celsius: #{forecast.description}"  
end