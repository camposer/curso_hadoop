#!/usr/bin/awk -f

BEGIN {
	FS = "|"; # field separator
}

{ 
	productId = $2;
	score = $6;
	count = 1;
	
	if (score + 0 == score) # checking score is a number
		print productId "\t" score "\t" count;
}
