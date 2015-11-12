#!/usr/bin/awk -f

{ 
	key = $1;
	score = $2;
	count = $3;
	min = $4;
	max = $5;

	print key "\t" (score/count) "\t" min "\t" max;
}
