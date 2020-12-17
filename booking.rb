
def smokey_week
    smokey_availability = { :Monday => "12:30pm - 1:30pm", :Tuesday => "2:30pm - 3:30pm", :Thursday => "12:00pm - 1:00pm"}
puts "Smokey is free to hangout during the following dates and times: "  

i = 0
 smokey_availability.each do |day, time| 
    i += 1 
    i -= 1 
    i = i += 1 
puts i.to_s + " #{day} : #{time}" end
end

def danger_week
    danger_availability = { :Monday => "11:30am - 12:30pm", :Tuesday => "3:30pm - 4:30pm", :Thursday => "1:00pm - 2:00pm"}
puts "Danger is free to hangout during the following dates and times: "  
i = 0
 danger_availability.each do |day, time| 
    i += 1 
    i -= 1 
    i = i += 1 
puts i.to_s + " #{day} : #{time}" end
end

def fran_week
    fran_availability = { :Monday => "12:00pm - 1:00pm", :Tuesday => "1:00pm - 2:00pm", :Thursday => "12:30pm - 1:30pm"}
puts "Fran is free to hangout during the following dates and times: "  
i = 0
 fran_availability.each do |day, time| 
    i += 1 
    i -= 1 
    i = i += 1 
puts i.to_s + " #{day} : #{time}" end
end

def spock_week
    spock_availability = { :Monday => "12:30pm - 1:30pm", :Tuesday => "2:30pm - 3:30pm", :Thursday => "12:00pm - 1:00pm"}
puts "Spock is free to hangout during the following dates and times: "  
i = 0
 spock_availability.each do |day, time| 
    i += 1 
    i -= 1 
    i = i += 1 
puts i.to_s + " #{day} : #{time}" end
end

def booking_form
system "clear"

require "./booking.rb"

danger_days = ["Monday","Tuesday", "Thursday"]
danger_times = ["11:30pm - 12:30pm","2:30pm - 3:30pm", "12:00pm - 1:00pm"]
booking_info =[] 

    box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
        "Booking Form"
    end
    
    print box
 
    puts ""
    puts "Nice! To make sure the furry ones are not overwhelmed playdates are limited to one hour blocks."
    puts ""
    danger_week
    puts""

    booking_info =[] 
while true
    datetime = TTY::Prompt.new.select('Please select and day and time you would prefer') do |menu|
        
        menu.choice('1', 1)
        menu.choice('2', 2)
        menu.choice('3', 3)
        case datetime
        when 1
            puts "You have selected to have a playdate with Danger on #{danger_days[0]} between #{danger_times[0]}"
booking_info.push(danger_days[0])
booking_info.push(danger_times[0])

    puts ""
    puts "Now to complete the booking we will just need a few details from you"
    puts ""
    prompt = TTY::Prompt.new

        name = prompt.ask("What is your name?")
        booking_info.push(name)
        
        age = prompt.ask("And your age?")
        booking_info.push(age)
        
        email = prompt.ask("Your email address?", required: true)
        booking_info.push(email)

        puts ""
        puts "Thanks! Please review the booking details below before confirming your booking:"
        puts "Name: #{booking_info[2]}, #{booking_info[3]}"
        puts "Email: #{booking_info[4]}"
        puts "Cat: Danger"
        puts "When: #{booking_info[0]} between #{booking_info[1]}"
        puts ""
        
     prompt = TTY::Prompt.new
     prompt.yes?("Would you like to confirm this booking?")
     system "clear"
puts "_____________________________________________________________________"
     puts ""
     box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
        "Booking Confirmed"
    end
    print box
    puts ""
    puts "Name: #{booking_info[2]}, #{booking_info[3]}"
    puts "Email: #{booking_info[4]}"
    puts "Cat: Danger"
    puts "When: #{booking_info[0]} between #{booking_info[1]}"
    puts ""
   
puts "_____________________________________________________________________"

require 'json'
File.open("text.txt", "w") do |file|
    file.write booking_info.to_json
    File.read("test.txt")
    
    end
while true
        selection = TTY::Prompt.new.select("What next?",  cycle: true, echo: false) do |menu|
            menu.choice('Back to Main Menu', 1)
            menu.choice('Exit', 2)

        
            case selection
                
                when 1
                  return
                end
              end
    end
    end
end
end
end

def view_booking
    system "clear"
    view=[]
    File.foreach('test.txt') { |item| view << item }
    puts view
    puts "Name: #{view}, #{view}"
    puts "Email: #{view[1]}"
    puts "Cat: Danger"
    puts "When: #{view}"
end

