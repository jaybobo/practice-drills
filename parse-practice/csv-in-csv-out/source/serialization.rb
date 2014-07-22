require 'csv'

class Person
  def initialize(args)
    @id = args[:id]
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @email = args[:email]
    @phone = args[:created_at]
  end
end

class PersonParser
  attr_reader :file, :people

  def initialize(file)
    @file = file
    @people = nil
  end

  # def people
  #   return @people if @people
  #   @csv = CSV.new(file, :headers => true, :header_converters => :symbol)
  #   puts @csv.to_a.inspect
  # end

  def people
    return @people if @people
#
    empty_array = []
#
    CSV.foreach(file, :headers => true, :header_converters => :symbol) do |row|
      empty_array << Person.new({
        id: row[:id],
        first_name: row[:first_name],
        last_name: row[:last_name],
        email: row[:email],
        phone: row[:phone]
      })
    end
    @people = empty_array
  end
end

parser = PersonParser.new('people.csv')
parser.people
#puts "There are #{parser.people.size} people in the file '#{parser.file}'."
