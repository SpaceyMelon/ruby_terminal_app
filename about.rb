def about
  
    system "clear"
            box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
                "What do we do?"
            end
            print box
          puts ""
          puts "Purrfect Playdate is an app that allows a user to book in a playdate with a kitty living in a local shelter."
          puts "There is a common misconception that cats are less sociable and require fewer human interactions than other domesticated pets."
         puts "Purrfect Playdate provides a service that results in the more sociable feline friends getting some much needed playtime without putting further strain on the already limited resources in the animal shelter industry."
          puts ""
          while true
            about_menu = TTY::Prompt.new.select("What next?",  cycle: true, echo: false) do |menu|
                menu.choice('Back to Main Menu', 1)
                menu.choice('Exit', 2)

           
                case about_menu
                  
                    when 1
                      system "clear"
                      return welcome_message
                
                    when 2
                      system "clear"
                      puts "Bye!"
                      exit
                    end
                  end
                end
        puts about
              end

              def welcome_message
                puts ""
puts "Welcome to Purrfect Playdate!"
puts ""
puts "Housemate allergic to cats? Boo"
puts "Too busy to commit to a furry friend fulltime? The worst"
puts "Help yourself and help out a kitty in need of a friend by booking in a playdate at your local shelter!"
puts ""
        end
            