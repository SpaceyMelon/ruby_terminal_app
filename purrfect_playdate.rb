
require "tty-prompt"
require "tty-box"

box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
    "PURRFECT PLAYDATE"
end

system "clear"

print box
puts ""
puts "Welcome to Purrfect Playdate!"
puts ""
puts "Housemate allergic to cats? Boo"
puts "Too busy to commit to a furry friend fulltime? The worst"
puts "Help yourself and help out a kitty in need of a friend by booking in a playdate at your local shelter!"
puts ""

while true
selection = TTY::Prompt.new.select("What would you like to do?",  cycle: true, echo: false) do |menu|
    menu.choice('Learn More!', 1)
    menu.choice('Make a booking!', 2)
    menu.choice('Spare', 3)
    menu.choice('Exit', 4)

    case selection
        
        when 1
        require "./about"
        about
         
        when 2 
        require "./cat_profiles"
        cat_profiles


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