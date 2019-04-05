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
    #first way I tried
    # email_array << @emails.split(/[,\s]/)
    # email_array = email_array.flatten
    # email_array.delete("")
    # email_array.uniq

    #second way if I make it simpler
    email_array << @emails.split(/[,\s]/)
    email_array.flatten.delete_if {|email| email == ""}.uniq
    # email_array = @emails.split(/[,\s]/)
    # email_array = email_array.reject {|email| email == ""}
    # email_array.uniq
  end

end
