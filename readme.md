# Simple Slurper Example

This is a simple example of using Mongo Mapper and the plucky query language.

## Plucky

Allows you to do arel like chaining to get a set of documents from your mongodb database:

    #examples
    
    # Find first document with the name = 'My Document'
    Document.where(:name => 'My Document').first
    
    # Find documents created after 1/1/2011
    Document.where(:created_at.gt => Date.parse('1/1/2011')).all
    

See this post for more details..

[http://railstips.org/blog/archives/2010/06/16/mongomapper-08-goodies-galore/](http://railstips.org/blog/archives/2010/06/16/mongomapper-08-goodies-galore/)


## About Simple Slurper

Simple Slurper has 2 ruby scripts:

* import.rb

This script simply imports a csv file, pulled from open data.gov as a test.  And loads it into a ReportCard MongoDb Document Model.

* slurp.rb

This script uses MongoMapper and Plucky to request a set of documents that meet a criteria of Physicians greater than 200

    results = ReportCard.where(:physicians.gt => 200).all
    
    
