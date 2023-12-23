def caesar_cipher(string, num)
	ascii_array = string.split("").map do |char|
		if (char.ord > 64 && char.ord < 91) || (char.ord > 96 && char.ord < 123)
			char.ord
		else
			char
		end
	end
	word = ascii_array.map do |ascii|
		if (ascii.ord > 64 && ascii.ord < 91) || (ascii.ord > 96 && ascii.ord < 123)
			(ascii + num).chr
		else
			ascii
		end
	end
	word.join("")
end

p caesar_cipher("What a string!", 5)

# caesar_cipher("What a string!", 5)
#Answer: "Bmfy f xywnsl!"