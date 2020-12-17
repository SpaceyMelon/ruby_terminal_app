
def smokey_week
    smokey_availability = { :Monday => "12:30pm - 1:30pm", :Tuesday => "2:30pm - 3:30pm", :Thursday => "12:00pm - 1:00pm"}
puts "Smokey is free to hangout during the following dates and times: "  
 smokey_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def danger_week
    danger_availability = { :Monday => "11:30am - 12:30pm", :Tuesday => "3:30pm - 4:30pm", :Thursday => "1:00pm - 2:00pm"}
puts "Danger is free to hangout during the following dates and times: "  
 danger_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def fran_week
    fran_availability = { :Monday => "12:00pm - 1:00pm", :Tuesday => "1:00pm - 2:00pm", :Thursday => "12:30pm - 1:30pm"}
puts "Fran is free to hangout during the following dates and times: "  
 fran_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def spock_week
    spock_availability = { :Monday => "12:30pm - 1:30pm", :Tuesday => "2:30pm - 3:30pm", :Thursday => "12:00pm - 1:00pm"}
puts "Spock is free to hangout during the following dates and times: "  
 spock_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def booking_form
system "clear"

require "./booking.rb"
    box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
        "Booking Form"
    end
    
    print box
    puts ""
    puts "Nice! To make sure the furry ones are not overwhelmed playdates are limited to one hour blocks."
    puts ""

    TTY::Prompt.new.select('Please select and day and time you would prefer') do |menu|
        
        menu.choice('Monday | 12:30pm - 1:30pm', 1)
        menu.choice('Tuesday | 12:30pm - 1:30pm', 2)
        menu.choice('Thursday | 12:30pm - 1:30pm', 3)
    end

    puts ""
    puts "You have selected to have a playdate with Danger on _____"
    puts ""
    puts "Now to complete the booking we will just need a few details from you"
    puts ""
    prompt = TTY::Prompt.new
    result = prompt.collect do
        key(:name).ask("What is your name?")
      
        key(:age).ask("And your age?", convert: :int)
      
        
          key(:email).ask("Your email address?", required: true)

        end
        puts ""
        puts "Thanks! Please review the booking details below before confirming your booking:"
        puts ""
        puts "Name: NAME, AGE"
        puts "Email: EMAIL"
        puts "Cat: CAT NAME"
        puts "When: DAY AND TIME"
        puts ""
        prompt.yes?("Would you like to confirm this booking?")
    end