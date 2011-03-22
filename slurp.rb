$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'bundler/setup'
require 'models'

results = ReportCard.where(:physicians.gt => 200).all

puts 'Facilities with over 100 physicians'

results.each do |report_card|
  puts "#{report_card.name} - #{report_card.facility} - #{report_card.state}"

end
puts results.count

