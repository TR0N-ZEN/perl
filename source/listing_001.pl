#!/usr/bin/perl
use strict;
use warnings;

# whitespaces are no matter to the compiler
print
    "Hello, world\n"
;

print "Hello, world\n";

print "------------------------------------------------------------\n";

# datatypes
## scalars
my $x = 4;
my $number = 2;
my $randomtext = "lol";
## arrays/lists
my @numbers = (0..21); 
my @numbers1 = (17,26,21);
my @numbers2 = qw/17 26 21/;
my @mixed = ("lion", 17, 1.13);
my @characters = ("a".."z");
$numbers1[3] = 13;
push @numbers2,(13,29); # appends items of list (13,29) to the end of array @numbers2
my $num1 = pop @numbers2; # removes the last item of @numbers2 and returns it, assingning it via = to $num1
unshift @numbers2,(11,7); # prepends items in list (11,7) to the array @numbers2
my $num2 = shift @numbers2; # removes first item of array @numbers2 and returns it, indexes of every element in the array down by one and returns the removed item
my $num3 = shift @numbers2;
print "$numbers[0]\n";
print "$numbers[21]\n";
print "$characters[21]\n";
print @numbers[0,2],"\n"; # return multiple entries by index
print @numbers[0..2],"\n"; # return a range of entries
print @numbers[1...$#numbers],"\n"; # return all except the item at index 1
my $size = @numbers;			# $size holds the size of the array @numbers
print "$size\t";
print scalar @numbers; print "\n";
@nums4to14 = splice @numbers, 4, 10, (0, 0, 0);
#splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ] # This function will remove the elements of @ARRAY designated by OFFSET and LENGTH, and replaces them with LIST, if specified. Finally, it returns the elements removed from the array.
#... string to array, array to string, special variable $[, selecting elements from a list
## hashes
my %weekdays = (
		"monday"      => 1,
		"tuesday"     => 2,
		"wednesday"   => 3,
		"thursday"    => 4,
		"friday"      => 5,
		"saturday"    => 6,
		"sunday"      => 7
);
print $weekdays{"monday"}; # prints 1
$weekdays{"extraday"} = 40; # adding a key-value pair to the hash
delete $weekdays{"extraday"}; # removing a key-value pair 
my @weekend = @weekdays{"saturday", "sunday"}; # create a list with value connected to the requested keys
my @name = keys %weekdays; # create a list from containing all keys of the hash
my @nums = values %weekdays; # create a list from containing all values of the hash
if (exists($weekdays{"wednesday"});) {$weekdays{"wednesday"}}
print "------------------------------------------------------------\n";

