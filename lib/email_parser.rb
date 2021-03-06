# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails_string, :emails_array

  def initialize(emails_string)
    @emails_string = emails_string
    self.parse
  end

  def parse
    if @emails_string.include?(",")
      @emails_array = @emails_string.split(",")
      if @emails_array.join("").include?(" ")
        @emails_array = @emails_array.join("").split(" ")
      end
    else
      @emails_array = @emails_string.split(" ")
    end
    @emails_array.uniq
  end
end
