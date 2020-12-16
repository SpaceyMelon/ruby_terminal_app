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
    menu.choice( 'Back to Main Menu', 5)

    case profiles
    when 1
        system "clear"
box = TTY::Box.frame(padding: 0, align: :center, width: 80, height: 20) do

"Name: Danger\n
Age: 4\n
Breed: Domestic short hair (Ginger)\n
Favourite Toys: Marbles\n
Favourite Scritch Spots: Under the chin and between the ears\n
Danger is a fiery boy who loves playing chase and hide and seek!\n 
He has a bit if an ego though so it's best to let him win to avoid a sulky puss (nothing a scratch under the chin won't fix!)"
end

print box
TTY::Prompt.new.select('Book a playdate with Danger?') do |menu|

menu.choice('Yep!', 1)
menu.choice('Profiles', 2)
menu.choice('Back to Main Menu', 3)

end
when 2
system "clear"
box = TTY::Box.frame(padding: 0, align: :center, width: 80, height: 20) do

"Name: Fran\n
Age: 2\n
Breed: Domestic long hair (Grey and White)\n
Favourite Toys: Laser pointer and her jingly strawberry\n
Favourite Scritch Spots: Top of her head and base of her tail\n
Fran is a polite and bougie lady that let's her wild side out at the site of a laser pointer!\n 
As much as she loves to play Fran will just as happily perch close by and allow you to adore her\n
**Fran is partial to female company**"
end
print box
TTY::Prompt.new.select('Book a playdate with Fran?') do |menu|

menu.choice('Yep!', 1)
menu.choice('Profiles', 2)
menu.choice('Back to Main Menu', 3)

end

when 3
system "clear"
box = TTY::Box.frame(padding: 0, align: :center, width: 80, height: 20) do

"Name: Spock\n
Age: 5\n
Breed: Domestic Short hair (Black)\n
Favourite Toys: Anything dangly!\n
Favourite Scritch Spots: Back scratches\n
Spock is one energetic lady! She loves chasing and attacking anything you can dangle on the end of a string\n 
If all the chasing tires you out she'll let you rest if you play a game of fetch"
end        
print box
TTY::Prompt.new.select('Book a playdate with Spock?') do |menu|

menu.choice('Yep!', 1)
menu.choice('Profiles', 2)
menu.choice('Back to Main Menu', 3)

end

when 4
system "clear"
box = TTY::Box.frame(padding: 0, align: :center, width: 80, height: 20) do

"Name: Smokey\n
Age: 2\n
Breed: Domestic long hair (Brown)\n
Favourite Toys: Wind up mouse and tunnels!\n
Favourite Scritch Spots: Under the chin and the belly\n
Smokey is a gentle giant. He may look boistrous when it's playtime but just loves a cuddle!\n 
You'll have a hard time saying no to this guy. He has somehow mastered the kitty version of puppy eyes"
end        
print box

TTY::Prompt.new.select('Book a playdate with Smokey?') do |menu|

    menu.choice('Yep!', 1)
    menu.choice('Profiles', 2)
    menu.choice('Back to Main Menu', 3)

end
when 5
system "clear"
puts "Bye!"
return
end
end
end
end
puts cat_profiles