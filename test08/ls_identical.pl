#!/usr/bin/perl

use File::Compare;

# array of pathnames under directory 1
my @dir_paths = glob("$ARGV[0]/*");

foreach $file (@dir_paths) {
    
    # like basename in shell
    $file =~ s/.*\///;
    if (compare("$ARGV[0]/$file", "$ARGV[1]/$file") == 0) {
        print "$file\n";
    }
}
