#!/usr/bin/perl -w

$word = $ARGV[0];
foreach $file (glob "lyrics/*.txt") {
    
    # Extract Artist's Name
    $artist = $file;
    # replace .txt with nothing
    $artist =~ s/\.txt$//;  
    # replace anything before the first '/' which is inherently "lyrics"  
    $artist =~ s/.*\///;
    # replace '_' with ' '
    $artist =~ s/_/ /g;
    
    # total_words in file
    $total = total_words($file);
    
    # count_words occurence
    $word_count = count_occurence($file, $word);
    
    # Calculate Frequency
    $frequency = $word_count/$total;
    
    # Result
    printf ("%4d/%6d = %.9f %s\n", $word_count, $total, $frequency, $artist);
}

sub total_words {
    
    my ($file) = @_;
    open (FH, '<', $file) or die $!;
    
    $count = 0;
    while ($line = <FH>) {
        @words = split /[^a-zA-Z]+/, $line;
        foreach $word (@words) {
            $count++ if $word ne '';
        }
    }
    
    close (FH);
    return $count;
}


sub count_occurence {
    my ($file, $search_word) = @_;
    $search_word = lc $search_word;
    
    open (FH, '<', $file) or die $!;
    
    $count = 0;
    while ($line = <FH>) {
        $line = lc $line;
        @words = split /[^a-z]+/, $line;
        foreach $word (@words) {
            $count++ if $word eq $search_word;
        }
    }
    
    close (FH);
    return $count;
}




