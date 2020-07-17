#!/usr/bin/perl -w

while ($line = <STDIN>) {
    @words = split /\s+/, $line;
    @words = sort @words;
    foreach $word (@words) {print $word, " ";}
    print "\n";
}
