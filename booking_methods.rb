require "tty-prompt"

# method for displaying booking details

def booking_details
puts ""
puts "Name: #{@booking_info[3]}"
puts "Age: #{@booking_info[4]}"
puts "Email: #{@booking_info[5]}"
puts "Cat: #{@booking_info[0]}"
puts "When: #{@booking_info[1]} between #{@booking_info[2]}"
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
     "Your Current Booking"
    end
    print box
    puts ""
puts "Name: #{myarray[3]}"
puts "Age: #{myarray[4]}"
puts "Email: #{myarray[5]}"
puts "Cat: #{myarray[0]}"
puts "When: #{myarray[1]} between #{myarray[2]}"
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
    "Booking Cancelled!"
end
print box
 
end
end

