class DateTime
	def past?
		return true if (self <=> DateTime.now) == -1
		false
	end

	def self.week_from_now
		DateTime.now + 7
	end
end