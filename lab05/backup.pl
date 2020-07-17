#!/usr/bin/perl -w

$file = $ARGV[0];

$version = 0;
while (-e ".$file.$version") { $version += 1; }

open $read, '<', "$file";
open $write, '>', ".$file.$version";

print $write (<$read>);

close $read;
close $write;

print "Backup of '$file' saved as '.$file.$version'\n";
