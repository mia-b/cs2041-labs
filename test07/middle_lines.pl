#!/usr/bin/perl -w

open (FH, '<', $ARGV[0]);
@lines = <FH>;
close (FH);

if (@lines < 1) {
    exit 1;
}
elsif (@lines % 2) {
    print $lines[$#lines/2];   
}
else {
    print $lines[$#lines/2];
    print $lines[($#lines/2)+1];
}
