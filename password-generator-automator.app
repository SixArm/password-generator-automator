on passwordCharacter()
	return ASCII character (random number from 97 to 122)
end passwordCharacter

on passwordCharacters(len)
	set s to ""
	repeat with x from 1 to len
		set s to s & passwordCharacter()
	end repeat
	return s
end passwordCharacters

on passwordPart()
	passwordCharacters(3)
end passwordPart

on passwordText()
	return passwordPart & "-" & passwordPart & "-" & passwordPart & "-" & passwordPart
end passwordText

on run {input, parameters}
	set s to passwordText()
	set the clipboard to s
	display dialog s
	return s
end run
