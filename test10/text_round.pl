#!/usr/bin/perl -w

while ($line = <>) {

    @numbers = $line =~ /(\d+\.\d+)/g;
    foreach $i (@numbers) {
        $i =~ /^(\d+)/;
        $whole = $1;

        if ($i =~ /\.[5-9]/) {
            $whole++;
        }
        
        $line =~ s/$i/$whole/;
    }
    
    print $line;
}
