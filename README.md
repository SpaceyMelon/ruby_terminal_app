# Purrfect Playdate
# GitHub
https://github.com/SpaceyMelon/ruby_terminal_app

Purrfect Playdate is an app that allows a user to book in a playdate with a kitty living in a local shelter. There is a common misconception that cats are less sociable and require fewer human interactions than other domesticated pets. Purrfect Playdate provides a service that results in the more sociable feline friends getting some much needed playtime without putting further strain on the already limited resources in the animal shelter industry. The app suits those animal lovers who are unable to house pets permanently (housemates are allergic, housing isn’t suitable etc) as well as those that find emotional comfort in the company of animals but cannot take on the responsibility of pet ownership. Another benefit of the app would be the hope that it would increase the number of permanent animal adoptions. Too often shelter animals are adopted and then returned due to not being the “right fit” for the household or the adopter having discovered that they are not an animal person. Having the ability to have playdates on site at the shelter is a great way to determine if 1) the adopter is comfortable around animals and 2) that the cat is comfortable with the human. Being able to determine these factors without the commitment of fostering or adopting could result in fewer ill thought out adoptions and more animals finding their forever homes. Those who wish to book in a playdate will have the option of choosing a cat to hang out with by perusing the profiles or by taking a personality quiz and being paired up with a cat that suits best. They will then have the option of booking a date and time as well as how long they would like the playdate to be (max one hour – anything more would be tiring for the furry friend). Once these details are selected there will be a summary of the booking before the customer can confirm and view the completed booking. 

# Install

Install the app -

1. git clone https://github.com/SpaceyMelon/ruby_terminal_app.git

2. cd ruby_terminal_app

3. chmod +x run_app.sh

4. ./run_app.sh

Dependancies - Ruby Gems
gem "tty-prompt"
gem "tty-box"
gem "rainbow"
gem "cryptozoologist"

ruby 2.7.0p0 (2019-12-25 revision 647ee6f091)



# Features

1.  Information section that provides further context and vital info
2.  Ability to browse profiles before booking
3.  User can cancel booking
4.  # Ability to book in a playdate with an available cat
The main purpose and fuction of the app is to book in a playdate with a cat.
The details of the cats profile are stored in a csv file as they are referrenced multiple times in the booking process. The booking information is obtained through a series of prompts with the responses being pushed to an array in the order they're obtained. Using tty-prompt has made validation easy and any validation errors will be handled via an if loop or case statements to direct the user to attempt the input again. Once all required input is received the array is written to a text file.
5. # User can confirm their booking which is saved in a file
Once confirmed the booking information array is written into a text file and stored.
By selecting the "view existing booking" option via the main menu the program checks to see if the text file is populated. If the .size check confirms there is content this information is then written back into the .rb file and used to display the booking. From there they have the option of cancelling the booking or returning to the main menu. If there is no booking currently stored a message will advise the user there that they have no current booking and the are presented with the main menu options.
6.  # Shelter is able to use a file to store and keep updated all pet information
In order to keep vital and frequently referrenced information stored in a central location that was accessable across all files/code I have included a .csv file.
This also provide and easy and user friendly way for for those wanting to use the app for commercial use. By assigning columns in the file as instance variables it means the cat profiles can be deleted and changed without needing to also change the variables within the .rb files.
Once the .csv is parsed it is assigned to an instance variable. I then assigned each column header in the file as it's own instance variable so I could access specific info such as the cats name by using the correct array index.
# Flowchart
[Terminal App Flowchart](./docs/flowchat.png)

# Control Flow outline
The user will be navigated through the app using mainly select menu options and as aswering ask prompts.
Each section of the app has a menu on the bottom with most including either an 'exit' or 'back to main menu' option to allow the user more flexibility over their navigation. The menu options are succcinct but descriptive enough to allow for easy decision making. Using loops the program offers mutliple opportunities to review or confirm input in order for the user to keep track of the process as well as rectify any incorrect input.

The flow of the app as shown in the above flowchart is handled primarily but menu options and ask prompts via tty-prompt. The next stage of the process is directed by a selection made by the user which is then navigated via a case statement or a loop. 
The code is split across multiple files in order to have more flexibility and control over variable scope and keep the code comprehesive. There are two files dedicated to methods while the others are in control of the data flow. 


# Testing
[Test One](./docs/Test1.PNG)
[Test Two](./docs/Test2.PNG)
[Test Three](./docs/Test3.PNG)

# Trello

[Trello One](./docs/Trello1.PNG)
[Trello Two](./docs/Trello2.PNG)
[Trello Three](./docs/Trello3.PNG)
[Trello Four](./docs/Trello4.PNG)
[Trello Five](./docs/Trello5.PNG)
[Trello Six](./docs/Trello6.PNG)
[Trello Seven](./docs/Trello7.PNG)

