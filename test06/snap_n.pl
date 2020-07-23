#!/usr/bin/perl -w

$n = $ARGV[0];
while ($line = <STDIN>) {
    
    $occurence{$line}++;
    
    if ($occurence{$line} == $n) {
        
        $snap = $line;
        print "Snap: $snap";
        exit 0;
    }
}


