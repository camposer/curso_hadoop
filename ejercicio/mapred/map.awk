#!/usr/bin/awk -f

BEGIN {
	FS = "|"; # field separator

	if (!pattern)
#		pattern = "have";
		pattern = "Tom Cruise";
}

{ 
	productId = $2;
	review = $9;

	num = split(review, a, pattern) - 1; # extracts number of ocurrencies
	if (num > 0) 
		print productId "\t" num;
}
