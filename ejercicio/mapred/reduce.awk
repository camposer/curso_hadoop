#!/usr/bin/awk -f

BEGIN {
	value = 0;
}

{ 
	tmpkey = $1;
	value += $2;

	if (tmpkey != key) {
		if (key) {
			print key "\t" value;
			value = 0;
		}

		key = tmpkey;
	} 
}

END {
	print key "\t" value;
}
