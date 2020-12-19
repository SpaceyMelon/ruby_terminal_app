
require "tty-prompt"
require "tty-box"
require 'rainbow'
system "clear"
# heading
box = TTY::Box.frame Rainbow("
██████  ██    ██ ██████  ██████  ███████ ███████  ██████ ████████ 
██   ██ ██    ██ ██   ██ ██   ██ ██      ██      ██         ██    
██████  ██    ██ ██████  ██████  █████   █████   ██         ██    
██      ██    ██ ██   ██ ██   ██ ██      ██      ██         ██    
██       ██████  ██   ██ ██   ██ ██      ███████  ██████    ██    
                                                                  
                                                                  
██████  ██       █████  ██    ██ ██████   █████  ████████ ███████ 
██   ██ ██      ██   ██  ██  ██  ██   ██ ██   ██    ██    ██      
██████  ██      ███████   ████   ██   ██ ███████    ██    █████   
██      ██      ██   ██    ██    ██   ██ ██   ██    ██    ██      
██      ███████ ██   ██    ██    ██████  ██   ██    ██    ███████").darkviolet

print box

puts ""
require "./about.rb"
require 'colorize'
require 'rainbow'
welcome_message
# main menu 
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
        begin
          require "./booking_methods.rb"
          check_for_booking
        end
    
        when 4
        system "clear"
        puts "Thanks for stooping by!"
        exit 

   
end
end
end

