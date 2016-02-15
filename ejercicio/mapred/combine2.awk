#!/usr/bin/awk -f

BEGIN {
	min = 99999;
	max = 0;
	key = 0;
}

{ 
	tmpkey = $1;
	if (key == 0)
		key = tmpkey;

	if (tmpkey != key) {
		print key "\t" score "\t" count "\t" min "\t" max;
		score = 0;
		count = 0;
		min = 99999;
		max = 0;

		key = tmpkey;
	} 

	score += $2;
	count += $3;
	min = ($2 < min) ? $2 : min;
	max = ($2 > max) ? $2 : max;
}

END {
	print key "\t" score "\t" count "\t" min "\t" max;
}
