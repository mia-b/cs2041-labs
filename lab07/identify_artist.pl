#!/usr/bin/perl -w

foreach $file (glob "lyrics/*.txt") {
    
    # Extract Artist's Name
    $artist = $file;
    # replace .txt with nothing
    $artist =~ s/\.txt$//;  
    # replace anything before the first '/' which is inherently "lyrics"  
    $artist =~ s/.*\///;
    # replace '_' with ' '
    $artist =~ s/_/ /g;
    
    open (FH, '<', $file) or die $!;
    while ($line = <FH>) {
        $line = lc $line;
        foreach $word ($line =~ /[a-z]+/g) {
            $word_count{$artist}{$word}++;
            $total_words{$artist}++;
        }
    }
    
    close (FH);
}

# read through program arguments as file names
foreach $file (@ARGV) {
    
    # initialise new hash holding log probabilities of each artist 
    my %log_prob;

    # open file name (arg)
    open (FH, '<', $file) or die $!;
    while ($line = <FH>) {
        $line = lc $line;
        
        # for each word, find for each artist, the log probability of the word
        foreach $word ($line =~ /[a-z]+/g) {
            foreach $artist (keys %word_count) {
                my $occurence = $word_count{$artist}{$word} || 0;
                my $total = $total_words{$artist};
            
                $log_prob{$artist} += log(($occurence + 1)/$total);
            }
        }
    }
    
    close (FH);
    
    # sort in descending by log probabilities
    @sorted = sort{$log_prob{$b} <=> $log_prob{$a}} keys %log_prob;
    
    printf ("%s most resembles the work of %s (log-probability=%.1f)\n", $file, $sorted[0], $log_prob{$sorted[0]});
}


