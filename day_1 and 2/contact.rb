require 'csv'

# Represents a person in an address book.
# The ContactList class will work with Contact objects
# instead of interacting with the CSV file directly
class Contact

  attr_accessor :id, :name, :email

  # Creates a new contact object
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(id, name, email)
    # TODO: Assign parameter values to instance variables.
    @id = id
    @name = name
    @email = email
  end

  # Provides functionality for managing contacts in the csv file.
  class << self

    # Opens 'contacts.csv' and creates a Contact object for
    # each line in the file (aka each contact).
    # @return [Array<Contact>] Array of Contact objects
    # TODO: Return an Array of Contact instances made
    # from the data in 'contacts.csv'.

    def all
      return_list = []
      CSV.foreach('contacts.csv') do |row|
        return_list << self.new(row[0],row[1],row[2])
      end
      return_list
    end

    # Creates a new contact, adding it to the csv file,
    # returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    # TODO: Instantiate a Contact,
    # add its data to the 'contacts.csv' file, and return it.

    def create(name, email)

      # figure out next ID by calling method: 'all' to get data from csv
      id = 0
      self.all.each do |person|
        id = person.id.to_i
      end
      id += 1

      # create instance and insert into CSV
      rtn_contact = self.new(id, name, email)
      CSV.open('contacts.csv', 'a+') do |csv|
        csv << [id, name, email]
      end

      rtn_contact
    end

    # Find the Contact in the 'contacts.csv'
    # file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with
    # the specified id. If no contact has the id, returns nil.
    # TODO: Find the Contact in the 'contacts.csv'
    # file with the matching id.

    def find(id)
      rtn_contact = {}
      self.all.each { |person|
        if person.id == id
          rtn_contact = person
          break
        end
      }
      rtn_contact
    end

    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email
    #  fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(term)
      # TODO: Select the Contact instances from the 'contacts.csv'
      # file whose name or email attributes contain the search term.
      rtn_contact = []
      # search_string =
      self.all.each { |person|
        if person.name.upcase.match(term.upcase) || person.email.upcase.match(term.upcase)
          rtn_contact << person
        end
      }
      rtn_contact
    end

  end  #end class << self


end
