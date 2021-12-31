#!/usr/bin/perl
use strict;
use warnings;

# control structures
## if elsif else 
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

unless ($a == 100) 	{ printf "is the same as \'if (!($a == 100)) {}\'			\n";		}  # elsif and else can follow
if (!($a == 100)) 	{ printf "is the same as \'if unless($a == 100) {}\'	\n";	}

$val1 = "a";
use Switch;
switch($val1) {
   case 1            { print "number 1" }
   case "a"          { print "string a";}
   case [1..10,42]   { print "number in list" }
   case (\@array)    { print "number in list" }
   case /\w+/        { print "pattern";}
   case qr/\w+/      { print "pattern" }
   case (\%hash)     { print "entry in hash" }
   case (\&sub)      { print "arg to subroutine" }
   else              { print "previous case not true" }
}

## loops
my @numbers = (0..21);
foreach (@numbers) { print "$_\n"; }

