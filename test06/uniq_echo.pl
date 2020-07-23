#!/usr/bin/perl -w

my %seen;
foreach my $word (@ARGV) {
    
    $seen{$word}++;
    
    if($seen{$word} > 1) { next; }
    
    print $word;
    print " ";
}

print "\n";
