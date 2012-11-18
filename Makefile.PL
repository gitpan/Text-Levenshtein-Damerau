use strict;
use warnings;
use ExtUtils::MakeMaker;

my $pm =   'lib/Text/Levenshtein/Damerau.pm';
my $repo = 'https://github.com/ugexe/Text--Levenshtein--Damerau';
my $bugs = 'https://rt.cpan.org/Public/Dist/Display.html?Name=Text-Levenshtein-Damerau';

WriteMakefile (
    NAME => 'Text::Levenshtein::Damerau',
    VERSION_FROM => $pm,
    ABSTRACT_FROM => $pm,
    AUTHOR => 'Nick Logan <ug@skunkds.org>',
    LICENSE => 'perl',
    PREREQ_PM => {
    },
    META_MERGE => {
        resources => {
            repository => $repo,
            bugtracker => "$bugs",
        },
    },
);
