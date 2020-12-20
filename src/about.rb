# methods for displaying information about/rules/contact info
def about
  
    system "clear"
            box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
                Rainbow("What do we do?").seagreen
            end
            print box
          puts ""
          puts Rainbow("Purrfect Playdate is an app that allows a user to book in a playdate with a kitty living in a local shelter.").lightcoral
          puts Rainbow("There is a common misconception that cats are less sociable and require fewer human interactions than other domesticated pets.").lightcoral
          puts Rainbow("Purrfect Playdate provides a service that results in the more sociable feline friends getting some much needed playtime without putting further strain on the already limited resources in the animal shelter industry.").lightcoral
          puts ""
          while true
            about_menu = TTY::Prompt.new.select("What next?",  cycle: true, echo: false) do |menu|
                menu.choice('Back to Main Menu', 1)
                menu.choice('Creepy Cryptozoologist', 2)
                menu.choice('Exit', 3)

           
                case about_menu
                  
                    when 1
                      system "clear"
                      return welcome_message

                    when 2
                      require "./booking_methods"
                      require "rainbow"
                      crypto_game
                
                    when 3
                      system "clear"
                      puts "Thanks for stopping by!"
                      exit
                    end
                  end
                end
              puts about
              end
# welcome message displayed on homepage
def welcome_message
 
  require 'rainbow'
puts ""
puts Rainbow("Welcome to Purrfect Playdate!").seagreen
puts ""
puts Rainbow("Housemate allergic to cats? Boo").lightcoral
puts Rainbow("Too busy to commit to a furry friend fulltime? The worst").lightcoral
puts Rainbow("Help yourself and help out a kitty in need of a friend by booking in a playdate at your local shelter!").lightcoral
puts ""
end
            