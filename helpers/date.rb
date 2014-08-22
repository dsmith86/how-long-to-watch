class DateTime
	def past?
		return true if (self <=> DateTime.now) == 1
		false
	end
end