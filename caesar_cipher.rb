=begin
Author: Letícia do Nascimento Rodrigues
Project "Caesar Cipher" from The Odin Project
24/jan/2018
=end

def caesar_cipher(string, n)

	string_az = Hash[("a".."z").to_a.zip((1..26).to_a)]
	string_AZ = Hash[("A".."Z").to_a.zip((1..26).to_a)]

	s = string.split(//)
	s.map! do |x|
		if string_az[x] != nil
			i = string_az[x] + n
			i-= 26 unless i <= 26
			string_az.key(i)
		elsif string_AZ[x] != nil
			i = string_AZ[x] + n
			i-= 26 unless i <= 26
			string_AZ.key(i)
		else
			x
		end
	end

	puts s.join
end

caesar_cipher("What a string!", 5)