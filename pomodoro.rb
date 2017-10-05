#!/usr/bin/env ruby

puts "pomodoro timer"

#Start_Timer
puts "\a \a \a"


def alert_screen(message)
        puts "\a \a \a"
        system('osascript -e \'display notification "timer done"   \' ')
end


puts " timer starting."

def gui
	system('clear')
	puts "remaining time: #{}"
end


def timer
	countdown = 25
	flag = true
	while (flag)
		sleep(60)
		countdown -= 1
		
		if countdown == 0
			alert_screen("timer done" )
			flag = false
			return false
		end
		
		puts "remaining time: #{countdown}"
	end
	return true
end

#timer

def main
	system('clear')
	puts "**************************************"
	puts "*******   POMODORO TIMER  ************"
	puts "**************************************"

	
	
	flag = true
	while flag
		puts "type 1 to start timer. 2 to start 5 minute break. 3 to exit: "
		input = gets.chomp.to_i
		puts input
		if input == 1
			puts "calling timer function"
			timer
		elsif flag == "2"
			#five_break
			alert_screen("five minute break starting")
		else
			flag = false
			break
		end
	end

end

main




