
require "./booking.rb"
require "./cat_profiles.rb"
require "./booking_methods"
require "csv"


def booking_cat
system "clear"

# Arrays for available days and times
danger_days = ["Monday","Tuesday", "Thursday"]
danger_times = ["11:30pm - 12:30pm","2:30pm - 3:30pm", "12:00pm - 1:00pm"]
fran_days = ["Monday","Tuesday", "Thursday"]
fran_times = ["12:00pm - 1:00pm","1:00pm - 2:OOpm", "12:30pm - 1:30pm"]
spock_days = ["Monday","Tuesday", "Thursday"]
spock_times = ["12:30pm - 1:30pm","2:30pm - 3:30pm", "12:00pm - 1:00pm"]
smokey_days = ["Monday","Tuesday", "Thursday"]
smokey_times = ["12:30pm - 2:30pm","2:30pm - 3:30pm", "12:00pm - 1:00pm"]
 
    box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
        "Booking Form"
    end
    print box
 
    puts ""
    puts Rainbow("Nice! To make sure the furry ones are not overwhelmed playdates are limited to one hour blocks.").lightcoral
    
    puts ""
    puts Rainbow("Please type the the name of the cat you would like to hang out with").lightcoral
    puts ""

    # empty arrays used to formulate completed booking
    @booking_info = [] 
    availability_times = []
    availability_days = []
    prompt = TTY::Prompt.new
    cat_name = prompt.ask("Danger/Fran/Spock/Smokey: ")
    @booking_info.push(cat_name)

    # loop to display availability
    if @booking_info[0] == "Danger"
      puts ""  
        danger_week
        availability_days = danger_days
        availability_times = danger_times
      puts ""
    elsif @booking_info[0] == "Fran"
      puts ""
        fran_week
        availability_days = fran_days
        availability_times = fran_times 
      puts ""

    elsif @booking_info[0] == "Spock"
      puts ""
        spock_week
        availability_days = spock_days
        availability_times = spock_times
      puts""

    elsif @booking_info[0] == "Smokey"
    puts ""
        smokey_week
        availability_days = smokey_days
        availability_times = smokey_times
    puts ""
    else puts "Invalid kitty name! please try again"
    end   
# menu to select preferred time and display confirmation
    while true
        datetime = TTY::Prompt.new.select Rainbow('Please select and day and time you would prefer').lightcoral do |menu|
            
            menu.choice('1', 1)
            menu.choice('2', 2)
            menu.choice('3', 3)
            case datetime
            when 1
                puts Rainbow("You have selected to have a playdate with #{@booking_info[0]} on #{availability_days[0]} between #{availability_times[0]}").lightcoral
    @booking_info.push(availability_days[0])
    @booking_info.push(availability_times[0])
    booking_user
    when 2
        puts Rainbow("You have selected to have a playdate with #{@booking_info[0]} on #{availability_days[1]} between #{availability_times[1]}").lightcoral
    @booking_info.push(availability_days[1])
    @booking_info.push(availability_times[1])
    booking_user
    when 3
        puts Rainbow("You have selected to have a playdate with #{@booking_info[0]} on #{availability_days[2]} between #{availability_times[2]}").lightcoral
    @booking_info.push(availability_days[2])
    @booking_info.push(availability_times[2])
    booking_user
    end
    def booking_user
    puts ""
    puts Rainbow("Now to complete the booking we will just need a few details from you").seagreen
    puts ""
    
    # ask prompts to gather user input for booking
    prompt = TTY::Prompt.new

        name = prompt.ask Rainbow("What is your name?").rebeccapurple
        @booking_info.push(name)
        
        age = prompt.ask Rainbow("And your age?").rebeccapurple
        @booking_info.push(age)
        
        email = prompt.ask Rainbow("Your email address?").rebeccapurple
        @booking_info.push(email)
        
        booking_details
     prompt = TTY::Prompt.new

     # booking confirmation
     prompt.yes? Rainbow("Would you like to confirm this booking?").lightcoral

        system "clear"

     system "clear"
puts "_____________________________________________________________________"
     puts ""
     box = TTY::Box.frame(padding: 0, align: :center, border: :thick) do
        Rainbow("Booking Confirmed").rebeccapurple
    end
    print box
    
    booking_details 
puts "_____________________________________________________________________"

# code to push array to text file
require 'json'
File.open("text.txt", "w") do |file|
    file.write @booking_info.to_json
    File.read("text.txt")
    
    end

while true
  final = TTY::Prompt.new.select("What next?",  cycle: true, echo: false) do |menu|
      menu.choice('Back to Main Menu', 1)
      menu.choice('Exit', 2)

      case final

      when 1 
          system "clear"
          require "./purrfect_playdate.rb"
          return selection
                
      when 2
          system "clear"
          puts "Thanks for stooping by!"
          exit
          end
          end
    end
    end
end
end
end



