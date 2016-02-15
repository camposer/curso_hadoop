#!/usr/bin/awk -f

BEGIN {
	value = 0;
	key = 0;
}

{
	tmpkey = $1;
	if (key == 0) 
		key = tmpkey;

	if (tmpkey != key) {
		print key "\t" value;
		value = 0;

		key = tmpkey;
	} 

	value += $2;
}

END {
	print key "\t" value;
}
