
    require "tty-prompt"
    require "tty-box"

    require 'csv'
    filename = "MOCK_DATA.csv"
    catlist = CSV.parse(File.read(filename), headers: true)
    cat_name = catlist.by_col[1]

def booking_menu
    require "./booking.rb"
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
            puts selection
    end
    end
    end
    end


def cat_profiles
    require "tty-prompt"
    require "tty-box"
    require 'csv'
    filename = "MOCK_DATA.csv"
    catlist = CSV.parse(File.read(filename), headers: true)
    cat_name = catlist.by_col[1]
    cat_age = catlist.by_col[2]
    cat_breed = catlist.by_col[3]
    cat_scritch = catlist.by_col[4]
    cat_toy = catlist.by_col[5]
    cat_personality1 = catlist.by_col[6]
    cat_personality2 = catlist.by_col[7]
    
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
            cat_selection = []
            case profiles
            
            when 1
                cat_selection.push(cat_name[0])
                system "clear"
     puts cat_selection
puts TTY::Box.frame("#{cat_name[0].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{cat_name[0]}\n
Age: #{cat_age[0]}\n
Breed: #{cat_breed[0]}\n
Favourite Toys: #{cat_toy[0]}\n
Favourite Scritch Spots: #{cat_scritch[0]}\n
#{cat_personality1[0]}\n 
#{cat_personality2[0]}"
        
        puts ""
        require "./booking.rb"
        danger_week
        puts ""
        
      booking_menu

        when 2
           system "clear"

puts TTY::Box.frame("#{cat_name[1].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{cat_name[1]}\n
Age: #{cat_age[1]}\n
Breed: #{cat_breed[1]}\n
Favourite Toys: #{cat_toy[1]}\n
Favourite Scritch Spots: #{cat_scritch[1]}\n
#{cat_personality1[1]}\n 
#{cat_personality2[1]}"

        puts ""
        require "./booking.rb"
        fran_week
        puts ""

      booking_menu

        when 3
        system "clear"

puts TTY::Box.frame("#{cat_name[2].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{cat_name[2]}\n
Age: #{cat_age[2]}\n
Breed: #{cat_breed[2]}\n
Favourite Toys: #{cat_toy[2]}\n
Favourite Scritch Spots: #{cat_scritch[2]}\n
#{cat_personality1[2]}\n 
#{cat_personality2[2]}"

        puts ""
        require "./booking.rb"
        spock_week
        puts ""
        booking_menu
        
        when 4
        system "clear"
       
         
    
      

puts TTY::Box.frame("#{cat_name[3].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{cat_name[3]}\n
Age: #{cat_age[3]}\n
Breed: #{cat_breed[3]}\n
Favourite Toys: #{cat_toy[3]}\n
Favourite Scritch Spots: #{cat_scritch[3]}\n
#{cat_personality1[3]}\n 
#{cat_personality2[3]}"

    
       
        print box
        puts ""
        require "./booking.rb"
        smokey_week
        puts ""
booking_menu
        end
        end
        end
    end
    
    
   
    puts cat_profiles

   