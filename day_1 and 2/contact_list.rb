require_relative 'contact'
require 'pry'
# Interfaces between a user and their contact list.
# Reads from and writes to standard I/O.
class ContactList

  def create_new_contact
    puts "Please enter contact name"
    name = gets.chomp
    puts "Please enter email"
    email = gets.chomp
    a_contact = Contact.create(name,email)
    puts "#{a_contact.name} has been added to your contacts with email #{a_contact.email} and id: #{a_contact.id}"
  end

  def list_all_contacts
    ctr = 0
    Contact.all.each { |person|
      puts "#{person.id}: #{person.name} (#{person.email})"
      ctr += 1
    }
    puts '---'
    puts "#{ctr} records total"
  end

  def show_selected_contact
    puts "Please enter id"
    id = gets.chomp
    a_contact = Contact.find(id)
    puts "ID # #{a_contact.id}: belongs to #{a_contact.name} email (#{a_contact.email})"
  end

  def search_for_contact
    puts "Please enter search criteria: name or email."
    search_key = gets.chomp
    ctr = 0
    Contact.search(search_key).each do |person|
      puts "ID # #{person.id}: #{person.name} (#{person.email})"
      ctr += 1
    end

    puts '---'
    puts "#{ctr} records total"
  end

end

puts "Here is a list of available commands:"
puts "     new    - Create a new contact"
puts "     list   - List all contacts"
puts "     show   - Show a contact"
puts "     search - Search contacts"
command_selected = gets.chomp.downcase

x = ContactList.new()
case command_selected
  when 'new'
    x.create_new_contact
  when 'list'
    x.list_all_contacts
  when 'show'
    x.show_selected_contact
  when 'search'
    x.search_for_contact
end
