#!/usr/bin/perl

$names = "huey dewey louie";
$regex = '(\w+) \s+(\w+)\s+(\w+)';

if ($names =~ m/$regex/) {
    print "1-ое имя $1.\n2-ое имя $2.\n3-е имя $3.\n";
    $names =~ s/$regex/\2 \1/;
    print "Новые имена \"${names}\".\n";
} else {
    print qq{"$names" не сопадает с "$regex". \n};
}