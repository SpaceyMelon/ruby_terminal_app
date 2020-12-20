require "tty-prompt"

# method for displaying booking details

def booking_details
puts ""
puts Rainbow("Name: #{@booking_info[3]}").rebeccapurple
puts Rainbow("Age: #{@booking_info[4]}").rebeccapurple
puts Rainbow("Email: #{@booking_info[5]}").rebeccapurple
puts Rainbow("Cat: #{@booking_info[0]}").rebeccapurple
puts Rainbow("When: #{@booking_info[1]} between #{@booking_info[2]}").rebeccapurple
puts ""
end

# method that will check text file for existing booking

def check_for_booking
    require "./booking_methods.rb"
    check = File.open("./text.txt").size
    if check == 0
        system "clear"
        box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do   
            "Your Current Booking"
           end
           print box
           puts""
      
    puts "You do not have a current booking!"
    puts ""
    elsif puts view_booking
    end
    end

# methods for displaying a booking once check has confirmed it exists

def view_booking
    
    require 'json'
    buffer = File.open('./text.txt', 'r').read
    myarray = JSON.parse(buffer)
    
    system "clear"
   
    require 'json'

    box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
     Rainbow("Your Current Booking").rebeccapurple
    end
    print box
    puts ""
puts Rainbow("Name: #{myarray[3]}").rebeccapurple
puts Rainbow("Age: #{myarray[4]}").rebeccapurple
puts Rainbow("Email: #{myarray[5]}").rebeccapurple
puts Rainbow("Cat: #{myarray[0]}").rebeccapurple
puts Rainbow("When: #{myarray[1]} between #{myarray[2]}").rebeccapurple
puts ""

    prompt = TTY::Prompt.new
       cancel = prompt.ask("Cancel booking? (y/n)") 
# loop that deletes contents of text file     
if cancel == "y"
    
    bookings="text.txt"
    text=''
    File.open(bookings,'r'){|f|f.gets;text=f.read}
    File.open(bookings,'w+'){|f| f.write(text)}
system "clear"
box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
    Rainbow("Booking Cancelled!").lightcoral
end
print box
 
end
end

# last minute addition gem game - used it to code a random animal themed identity
# put in about section as not to disrupt data/menu flow
def crypto_game
system "clear"
box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
    Rainbow("cryptozoologist").seagreen end
    print box
    puts ""
    puts Rainbow("Find out your creepy Cryptozoologist secret identity!").rebeccapurple
    puts Rainbow("We'll give you a new name, address and a disguise!").rebeccapurple
    puts Rainbow("All the things you'll need to disappear and start your new life as a cryptozoologist").rebeccapurple
    puts Rainbow("....probably").rebeccapurple
    puts ""
    require 'cryptozoologist'
while true
    crypto = TTY::Prompt.new.select("Yeah?",  cycle: true, echo: false) do |menu|
      menu.choice('Go for it', 1)
      menu.choice('Exit', 2)
    case crypto
    when 1
puts""
puts Rainbow("Name").lightcoral
puts Cryptozoologist.full_name
puts ""
puts Rainbow("Address").lightcoral
puts Cryptozoologist.street_address 
puts Cryptozoologist.city 
puts Cryptozoologist.state 
puts ""
puts Rainbow("Disguise").lightcoral
puts Cryptozoologist.random

    when 2
        system "clear"
        puts "Thanks for stopping by!"
        exit
    end
  end  
end
end
