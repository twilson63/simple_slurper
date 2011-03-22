$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'bundler/setup'
require 'mongo_mapper'
require 'fastercsv'

require 'models'

ReportCard.delete_all

FasterCSV.foreach('data.csv', :headers => true) do |row|
  ReportCard.create(
    :visn => row[0].to_i,
    :name => row[1],
    :facility => row[2],
    :city => row[3],
    :state => row[4],
    :physicians => row[5],
    :nursing => row[6],
    :other => row[7]
  )
end

puts ReportCard.all.count

