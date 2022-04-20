def cipher(str, num = 0)
    chr_array = str.split('')
	chr_array.each_with_index   do |chr,ind|
				      c = chr.ord 
     				  capitals = (c >= 65 && c <= 90)
  				      smalls = (c >= 97 && c <= 122)
				      chr_array[ind] = ((c - 65 + num + 26) % 26 + 65).chr if capitals 
		              chr_array[ind] = ((c - 97 + num + 26) % 26 + 97).chr if smalls
				    end
	chr_array.join			
end

puts cipher("What a string!" , 5)
