#!/usr/bin/perl -w

while ($line = <STDIN>) {

    @lines = ($line =~ /\-?(?:\d+\.?\d*|\.\d+)/g);
    
    if (@lines) {
        $largest_in_line = (sort {$b <=> $a} @lines)[0];
        
        push @lines, $line;
        push @values, $largest_in_line; 
    }
    

}

if (@values) {
   $largest_val = (sort {$b <=> $a} @values)[0];
    foreach $i (0..$#values) {
        if ($values[$i] == $largest_val) {
            print $lines[$i];
        }
    }
}
