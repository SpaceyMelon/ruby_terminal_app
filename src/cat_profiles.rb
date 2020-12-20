
    require "tty-prompt"
    require "tty-box"
    
# method that displays menu of profiles
    def booking_menu
        
        while true
    
            bookingmenu = TTY::Prompt.new.select('Book a playdate?') do |menu|
            
            menu.choice('Yep!', 1)
            menu.choice('Profiles', 2)
            menu.choice('Back to Main Menu', 3)
            
            case bookingmenu
                
            when 1
                require "./booking.rb"
                booking_cat
    
            when 2
                system "clear"
                cat_profiles
    
            when 3 
                system "clear"
                require "./purrfect_playdate.rb"
                return selection
                
        end
        end
        end
        end
    


# methods for displaying cat profiles once selected from menu
def cat_profiles
require 'rainbow'
    require "./cat_methods.rb"
    system "clear"
        box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
            Rainbow("Cat Profiles").seagreen
        end
        
        print box
        puts ""
        while true
        profiles = TTY::Prompt.new.select("Pick a kitty below to see their profile and booking info") do |menu|
        
            menu.choice('Danger', 1)
            menu.choice('Fran', 2)
            menu.choice('Spock', 3)
            menu.choice('Smokey', 4)
            menu.choice('Back to Main Menu', 5)
            
            case profiles
            
            when 1
                
                system "clear"
                
                danger 
                booking_menu
            when 2
                
                system "clear"
                fran
                booking_menu
            when 3
                
                system "clear"
                spock
                booking_menu
            
            when 4
                
                system "clear" 
                smokey 
                booking_menu

            when 5
                system "clear"
                require "./purrfect_playdate.rb"
                return selection

                return
              next
            end       
        
        end
        end
    end
    
    puts cat_profiles
