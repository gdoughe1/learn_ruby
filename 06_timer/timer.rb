class Timer
  #write your code here
	def seconds
		@seconds = 0
	end
	def seconds=(sec)
		@seconds = sec
	end	
 	def time_string 
		if @seconds < 60
			hours = 0
			minutes = 0
			secs = @seconds
		elsif @seconds >= 60 and @seconds < 3600
			hours = 0
			minutes = @seconds/60
			mremain = @seconds%60
			secs = mremain
		else
			hours = @seconds / 3600
			hremain = @seconds % 3600
			minutes = hremain / 60
			mremain = hremain % 60
			secs = mremain
		end
		hourstring = hours.to_s
		minutestring = minutes.to_s
		secstring = secs.to_s
		if hours < 10
			hourstring = "0"+hourstring
		end
		if minutes < 10
			minutestring = "0"+minutestring
		end
		if secs < 10
			secstring = "0"+secstring
		end
		"#{hourstring}:#{minutestring}:#{secstring}"
	end
end
