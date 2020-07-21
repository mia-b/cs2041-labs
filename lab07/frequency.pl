#!/usr/bin/perl -w


foreach $lyr_file (glob "lyrics/*.txt") {
    $artist = $lyr_file;
    # replace .txt with nothing
    $artist =~ s/\.txt$//;  
    # replace anything before the first '/' which is inherently "lyrics"  
    $artist =~ s/.*\///;
    # replace '_' with ' '
    $artist =~ s/_/ /g;
    
    # print "$artist\n"
    open $file, '<', $lyr_file
    while ($line = <$file>) {
    
        $line = lc $line;
        @words = split /[^a-z]+/, $line;
        
        foreach $word (@words) {
            $count++ if $word eq $search_word;
        }
    }
    
}


