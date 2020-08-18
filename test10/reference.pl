#!/usr/bin/perl -w

@lines = <STDIN>;
foreach $n (0..$#lines) {
    
    if ($lines[$n] =~ /#(\d+)/) {
        $lines[$n] = $lines[$1-1];
    }     
    
}

print @lines;
