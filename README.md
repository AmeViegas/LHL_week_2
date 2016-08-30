LHL - week 2 - exam week

**Contact List App (CR) - requirements**

    This activity is broken into multiple features.
    
    When the app is run with no command, it should display a menu like this and then exit.
       Here is a list of commands: 
       new - create a new contact
       list - list all contacts
       show - show a contact
       search - search contact
    
    Command 2: Contact index (list command)
       the program should display a list of all contacts in the CSV, one on each line
    Command 3: Contact creation (new command)
       When the user enters the new command, the program should further prompt them for information about the contact 
       they wish to create. It should ask for a full name and email address, separately. Once the user has entered the 
       details about the contact, the application should save this information to the CSV file. The program should also 
       display a message indicating that the contact was created successfully, possibly showing the id of the newly 
       created contact.
    Command 4: Contact details (show command)
       When on the user enters the show command along with an ID (index) of the contact, the app should display their 
       details. If a contact with that index/ID is found, the program displays their details with each field being 
       printed on an separate line. If the contact cannot be found, it displays a custom "not found" message.
    Command 5: Contact search (search command)
       When the user enters the search command along with a search term, the program will display the contact details 
       of any contacts which have the search term contained within their name or email.
       
**Warcraft III Barracks Simulator (CR) - requirements**

      Warcraft III is a famous strategy video game by Blizzard. In this game, players can build army barracks and then 
      use them to train footman soldiers that fight other players' soldier units.
      
      We're going to use OOP to model Warcraft III's unit training. You'll be reading RSpec examples to determine what
      functionality needs to be built and then implement it so that all the specs pass.
           
