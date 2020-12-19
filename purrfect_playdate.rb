
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
        require "./about.rb"
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
        exit 

   
end
end
end

