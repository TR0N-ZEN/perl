#!/usr/bin/perl
use strict;
use warnings;

# regualar expressions

## matching with //

my $bar = "This is foo and again foo";
if ($bar =~ /foo/) {
   print "First time is matching\n";
} else {
   print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ /foo/) {
   print "Second time is matching\n";
} else {
   print "Second time is not matching\n";
}

if ($bar =~ m[foo]) {
   print "Third time is matching\n";
} else {
   print "Third time is not matching\n";
}

if ($bar =~ m{foo}) {
   print "Fourth time is matching\n";
} else {
   print "Fourth time is not matching\n";
}

if ($bar =~ m(foo)) {
   print "Fifth time is matching\n";
} else {
   print "Fifth time is not matching\n";
}

### grouping with ()

my $stringtime = "17:59";
my ($hour, $min) = ($stringtime =~ m/(\d+):(\d+)/);
print "$hour h  "; print "$min m\n";

### regex variables

$string = "The food is in the salad bar";
$string =~ m/foo/;
print "Before: $`\n";
print "Matched: $&\n";
print "After: $'\n";
