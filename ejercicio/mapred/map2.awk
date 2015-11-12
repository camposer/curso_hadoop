#!/usr/bin/awk -f

BEGIN {
	FS = "|"; # field separator
}

{ 
	productId = $2;
	score = $6;

	print productId "\t" score;
}
