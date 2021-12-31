resources:
+ https://perldoc.perl.org/perlintro
+ https://www.mathe2.uni-bayreuth.de/perl/start.htm
+ https://www.tutorialspoint.com/perl/index.htm

---

Since the shell loading a file for the perl interpreter/parser/whatever  
needs to be instructed where the interpreter/.. is located  
this by entering this or smth like this in the first line of the source code:
```perl
#!/usr/bin/perl
```

additionally it is useful to append the following code after the first line
```perl
use strict;
use warnings;
```

comments are prefixed by a `#` like so
```perl
# lol who wrote that funny stuff? 
```

Whitespaces are ignored by the interpreter/parser/whatever, 
so the following two code snippets are eqivalent
```perl
print
    "Hello, world"
;
```

```perl
print "Hello, world";
```

Double quotes so `""` cause the text between corrsponding ones 
to be taken literal except for variables like `$x` and commands like `\n`.


---

Perl is procedural and object-oriented

A Program is a series of statementes.
Statements are terminated with a `;`

```perl
print "Hello, world";
```
# variables
The variable types are:  _scalar_, _array_, _hash_
+ _scalar_
+ _array_
    + example
    	```perl
    	@numbers = (0..21); 
    	@numbers1 = (17,26,21);
    	@mixed = ("lion", 17, 1.13);
    	@characters = (a..z);
			@ARGV # the array of arguments passed to this program
    	```
    + are zero indexed
    	```perl
    	@numbers[0,2];              # returns first and third element
    	@numbers[0..2];             # returns all elements from index 0 to index 2, including those from index 0 and 2
    	@numbers[1...$#numbers];    # returns all except the first element
    	```
    + methods
    	```perl
    	@numbers2 = sort @numbers;
    	@numbers3 = reverse @numbers;
    	push @numbers2,@numbers3;
    	$val = pop @numbers3;
    	```
+ _hash_ (is a set of key-value pairs)
	+ set
		```perl
		%weekdays = ("monday", 1, "tuesday", 2, "wednesday", 3, "thursday", 4, "friday", 5, "saturday", 6, "sunday", 7);
		```
		```perl
		%weekdays = (
				"monday"      => 1,
				"tuesday"     => 2,
				"wednesday"   => 3,
				"thursday"    => 4,
				"friday"      => 5,
				"saturday"    => 6,
				"sunday"      => 7
		);
		```
  + get a value  
	  ```perl
	  $weekdays{"monday"}; # returns 1
	  ```
# ...
...

...

# Files and Input-Output

```perl
open(my $in, "<", "input.txt") or die "Can't open input.txt: $!";
open(my $out, ">", "output.txt") or die "Can't open output.txt: $!";
``` 


---

### strings 
<details><summary>escape Characters</summary>  

![escapeCharacters](./pics/escapeCharacters.png)
</details>