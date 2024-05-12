#!/bin/perl -w

use strict;
use feature 'say';

sub Sexy_prime_pairs{
	my $i = 2;
	my $c = 10;
	
	while ($c > 0){
		if (is_prime($i)){
			if (is_prime($i + 6)){
				say($i. ', ', $i + 6);
				$c--;
			}
		}	
		$i++;
	}
}

sub is_prime {
	foreach (2 .. $_[0] - 1){
		return 0 if $_[0] % $_ == 0
	}
	
	return 1
}

Sexy_prime_pairs()

#5, 11
#7, 13
#11, 17
#13, 19
#17, 23
#23, 29
#31, 37
#37, 43
#41, 47
#47, 53
