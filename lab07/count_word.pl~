#!/usr/bin/perl -w

# count number of times a specified word is found in STDIN
# word specified is from command line argument
# ignore case of words

# HINT: use uc & lc to convert strings

$search_word = lc $ARGV[0];

$count = 0;
while ($line = <STDIN>) {
    $line = lc $line;
    @words = split /[^a-z]+/, $line;
    foreach $word (@words) {
        $count++ if $word eq $search_word;
    }
}

print "$search_word occurred $count times\n"
