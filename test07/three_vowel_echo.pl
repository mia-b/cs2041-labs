#!/usr/bin/perl -w

foreach $word (@ARGV) {
    $tmp = lc $word;
    if ($tmp =~ /[aeiou]{3}/) {
        print "$word ";
    }
}

print "\n";
