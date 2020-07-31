#!/usr/bin/perl -w

my @values = sort{$a <=> $b} @ARGV;
print "$values[(@values/2)]\n";
