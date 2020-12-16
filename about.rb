def about
    system "clear"
            box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
                "What do we do?"
            end
            print box
          puts ""
          puts "Purrfect Playdate is an app that allows a user to book in a playdate with a kitty living in a local shelter. There is a common misconception that cats are less sociable and require fewer human interactions than other domesticated pets. Purrfect Playdate provides a service that results in the more sociable feline friends getting some much needed playtime without putting further strain on the already limited resources in the animal shelter industry."
        end
        puts about