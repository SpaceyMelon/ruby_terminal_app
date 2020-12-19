
    require "tty-prompt"
    require "tty-box"

def booking_menu
    
    while true

        bookingmenu = TTY::Prompt.new.select('Book a playdate?') do |menu|
        
        menu.choice('Yep!', 1)
        menu.choice('Profiles', 2)
        menu.choice('Back to Main Menu', 3)
        
        case bookingmenu
            
        when 1
    
        booking_form

        when 2
            system "clear"
            require "./cat_profiles.rb"
            cat_profiles

        when 3 
            system "clear"
            require "./purrfect_playdate.rb"
            selection
    end
    end
    end
    end


def cat_profiles
    require "tty-prompt"
    require "tty-box"

        system "clear"
        box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
            "Cat Profiles"
        end
        print box
        while true
        profiles = TTY::Prompt.new.select("Pick a kitty below to see their profile and booking info") do |menu|
        
            menu.choice('Danger', 1)
            menu.choice('Fran', 2)
            menu.choice('Spock', 3)
            menu.choice('Smokey', 4)
            menu.choice('Back to Main Menu', 5)
            
            case profiles
            
            when 1
                require "./practise.rb"       
                system "clear"
                danger 
                booking_menu
            when 2
                require "./practise.rb"
                system "clear"
                fran
                booking_menu
            when 3
                require "./practise.rb"
                system "clear"
                spock
                booking_menu
            
            when 4
                require "./practise.rb"       
                system "clear" 
                danger 
                booking_menu

            when 5
                system "clear"
                require "./purrfect_playdate.rb"
                selection
        end
        end
        end
        end
        
        puts cat_profiles

   