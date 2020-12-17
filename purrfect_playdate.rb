
require "tty-prompt"
require "tty-box"
system "clear"
box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
    "PURRFECT PLAYDATE"
end
print box

require "./about.rb"
welcome_message

while true
selection = TTY::Prompt.new.select("What would you like to do?") do |menu|
    menu.choice('Learn More!', 1)
    menu.choice('Make a booking!', 2)
    menu.choice('View exisitng booking', 3)
    menu.choice('Exit', 4)

    case selection
        
        when 1
        require "./about"
        about
         
        when 2 
        require "./cat_profiles"
        cat_profiles

        when 3 
        require "./booking.rb"
        view_booking


    when 4
        system "clear"
        puts "Bye!"
        return

   
end
end
end

 case profile_menu
    when 1
        system "clear"
        box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
            "Booking Form"
        end
        print box
        puts ""
        puts "Nice! To make sure the furry ones are not overwhelmed playdates are limited to one hour blocks."
        puts ""
        TTY::Prompt.new.select('Please select and day and time you would prefer') do |menu|
    
            menu.choice(danger_week[:monday], 1)
            menu.choice('Profiles', 2)
            menu.choice('Back to Main Menu', 3)
        end
    end