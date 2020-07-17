#!/usr/bin/perl -w

use File::Compare;

if ($#ARGV < 1) {
    print "Usage: ./identical_files.pl <files>";
    exit 1;
}

for ($i = 1; $i <= $#ARGV; $i++) {
    if (compare("$ARGV[0]", "$ARGV[$i]") != 0) {
        print "$ARGV[$i] is not identical\n";
        exit 1;
    }
}

print "All files are identical\n";
