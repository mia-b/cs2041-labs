#!/usr/bin/perl -w

open (FH, '<', $ARGV[0]);
@lines_array = <FH>;
close (FH);

@sorted_array = sort compare @lines_array;

print @sorted_array;

sub compare {
    if (length $a == length $b) { return $a cmp $b; }
    else { return length $a <=> length $b; }
}
