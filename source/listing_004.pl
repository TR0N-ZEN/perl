#!/usr/bin/perl
use strict;
use warnings;

$a = 100;

if ($a > 40) {
	printf "the value of a is bigger than 40\n";
} elsif ($a > 30) {
	printf "the value of a is bigger than 30 but less than 41\n";
} elsif ($a > 20) {
	printf "the value of a is bigger than 20 but less than 31\n";	
} else {
	printf "the value of a is less than 21\n";
}

##############

unless ($a == 100) 	{ printf "is the same as \'if (!($a == 100)) {}\'			\n";		}
if (!($a == 100)) 	{ printf "is the same as \'if unless($a == 100) {}\'	\n";	}
