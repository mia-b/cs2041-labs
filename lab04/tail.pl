#!/usr/bin/perl -w

foreach $arg (@ARGV) {
    if ($arg eq "--version") {
        print "$0: version 0.1\n";
        exit 0;
    }
    else {
        push @files, $arg;
    }
    
}
