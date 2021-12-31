#!/usr/bin/perl
use strict;
use warnings;

print
    "Hello, world\n"
;

print "Hello, world\n";


my @numbers = (0..21); 
my @numbers1 = (17,26,21);
my @mixed = ("lion", 17, 1.13);
my @characters = ("a".."z");

print @numbers[0,2];            print "\n";
print @numbers[0..2];           print "\n";
print @numbers[1...$#numbers];  print "\n";

print "$numbers[0]\n";
print "$numbers[21]\n";
print "$characters[21]\n";


print "------------------------------------------------------------\n";


my $size = @numbers;

foreach (@numbers)
{
    print "$_\n";
}

foreach (@numbers)
{
    print "$_\n" if $_n mod 2 = 0;
}