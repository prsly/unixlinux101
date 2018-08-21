#!/usr/bin/perl

$maxatt = 3;

sub get_string {
    my ($prompt, $response) = shift;
    for (my $attempts = 0; $attempts < $maxatt; $attempts++){
        print "Пожалуйста, попытайтесь ещё раз.\n" if $attempts;
        print "$prompt: ";
        $response = readline(*STDIN);
        chomp($response);
        return $response if $response;
    }
    die "Слишком много неудачных попыток ввести данные";
}
$fname = uc get_string "Имя";
$lname = uc get_string "Фамилия";
printf "Полное имя: $fname $lname\n";