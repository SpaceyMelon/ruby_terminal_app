# required files and instance variables

require 'csv'
filename = "MOCK_DATA.csv"
@catlist = CSV.parse(File.read(filename), headers: true)
@cat_name = @catlist.by_col[1]
@cat_age = @catlist.by_col[2]
@cat_breed = @catlist.by_col[3]
@cat_scritch = @catlist.by_col[4]
@cat_toy = @catlist.by_col[5]
@cat_personality1 = @catlist.by_col[6]
@cat_personality2 = @catlist.by_col[7]
require "tty-prompt"
require "tty-box"

# Methods for cat profile info and availability info

def danger
    puts box = TTY::Box.frame("#{@cat_name[0].upcase}", padding: 0, align: :center, border: :thick) 
    puts ""                 
puts "Name: #{@cat_name[0]}\n
Age: #{@cat_age[0]}\n
Breed: #{@cat_breed[0]}\n
Favourite Toys: #{@cat_toy[0]}\n
Favourite Scritch Spots: #{@cat_scritch[0]}\n
#{@cat_personality1[0]}\n 
 #{@cat_personality2[0]}"

    puts ""
    require "./booking.rb"
    danger_week
    puts ""
end

def fran
puts TTY::Box.frame("#{@cat_name[1].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{@cat_name[1]}\n
Age: #{@cat_age[1]}\n
Breed: #{@cat_breed[1]}\n
Favourite Toys: #{@cat_toy[1]}\n
Favourite Scritch Spots: #{@cat_scritch[1]}\n
#{@cat_personality1[1]}\n 
#{@cat_personality2[1]}"

        puts ""
        require "./booking.rb"
        fran_week
        puts ""
end

def spock
puts TTY::Box.frame("#{@cat_name[2].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{@cat_name[2]}\n
Age: #{@cat_age[2]}\n
Breed: #{@cat_breed[2]}\n
Favourite Toys: #{@cat_toy[2]}\n
Favourite Scritch Spots: #{@cat_scritch[2]}\n
#{@cat_personality1[2]}\n 
#{@cat_personality2[2]}"

        puts ""
        require "./booking.rb"
        spock_week
        puts ""
end

def smokey
puts TTY::Box.frame("#{@cat_name[3].upcase}", padding: 0, align: :center, border: :thick) 
puts ""                 
puts "Name: #{@cat_name[3]}\n
Age: #{@cat_age[3]}\n
Breed: #{@cat_breed[3]}\n
Favourite Toys: #{@cat_toy[3]}\n
Favourite Scritch Spots: #{@cat_scritch[3]}\n
#{@cat_personality1[3]}\n 
#{@cat_personality2[3]}"

        puts ""
        require "./booking.rb"
        smokey_week
        puts ""
end