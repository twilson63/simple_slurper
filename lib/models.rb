require 'mongo_mapper'

MongoMapper.database = 'sample'

class ReportCard
  include MongoMapper::Document
  key :visn, Integer
  key :name, String
  key :facility, String
  key :city, String
  key :state, String
  key :physicians, Integer
  key :nurses, Integer
  key :other, Integer

  timestamps!
end
