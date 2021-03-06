#!/usr/bin/perl

for my $i (1..100) {
	my $printed = 0;

	#3 is hard
	if ($i =~ /^([0369]|[258][0369]*[147]|[147]([0369]|[147][0369]*[258])*[258]|[258][0369]*[258]([0369]|[147][0369]*[258])*[258]|[147]([0369]|[147][0369]*[258])*[147][0369]*[147]|[258][0369]*[258]([0369]|[147][0369]*[258])*[147][0369]*[147])*$/) {
		print "Fizz";
		$printed = 1;
	}

	#5 has a predictable ending
	if ($i =~ /(0|5)$/) {
		print "Buzz";
		$printed = 1;
	}

	print "$i" unless $printed;
	print "\n";
}
