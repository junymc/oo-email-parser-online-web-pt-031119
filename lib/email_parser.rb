# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = []
    #first way I tried => still complecated
    # email_array << @emails.split(/[,\s]/)
    # email_array = email_array.flatten
    # email_array.delete("")
    # email_array.uniq

    #second way if I make it simpler => much better!
    # email_array << @emails.split(/[,\s]/)
    # email_array.flatten.delete_if {|email| email == ""}.uniq

    #third way that I passed the test with at first => using .reject
    # email_array = @emails.split(/[,\s]/)
    # email_array = email_array.reject {|email| email == ""}
    # email_array.uniq

    #fourth way that classmate passed the test with(the simplest way!)
    email_array = @emails.split(/[,\s]+/).uniq
  end

end
