
def smokey_week
    smokey_availability = { :Monday => "12:30pm - 1:30pm", :Tuesday => "2:30pm - 3:30pm", :Thursday => "12:00pm - 1:00pm"}
puts "Smokey is free to hangout during the following dates and times: "  
 smokey_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def danger_week
    danger_availability = { :Monday => "11:30am - 12:30pm", :Tuesday => "3:30pm - 4:30pm", :Thursday => "1:00pm - 2:00pm"}
puts "Danger is free to hangout during the following dates and times: "  
 danger_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def fran_week
    fran_availability = { :Monday => "12:00pm - 1:00pm", :Tuesday => "1:00pm - 2:00pm", :Thursday => "12:30pm - 1:30pm"}
puts "Fran is free to hangout during the following dates and times: "  
 fran_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def spock_week
    spock_availability = { :Monday => "12:30pm - 1:30pm", :Tuesday => "2:30pm - 3:30pm", :Thursday => "12:00pm - 1:00pm"}
puts "Spock is free to hangout during the following dates and times: "  
 spock_availability.each do |day, time| 
    puts "#{day} : #{time}" end
end

def completed_booking
    summary[]
end