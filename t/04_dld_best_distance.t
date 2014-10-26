use strict;
use warnings;

use Test::More tests => 2;
use Text::Levenshtein::Damerau;

my $tld = Text::Levenshtein::Damerau->new('four');
my @list = ('fourty','fuor','fourth','fourteen','');
is($tld->dld_best_distance({ list => \@list }), 1, 'test dld_best_distance');



#Test some utf8
use utf8;
binmode STDOUT, ":encoding(utf8)";
my $tld_utf8 = Text::Levenshtein::Damerau->new('ⓕⓞⓤⓡ');
my @list_utf8 = ('ⓕⓤⓞⓡ','ⓕⓞⓤⓡⓣⓗ','ⓕⓧⓧⓡ','');
is($tld_utf8->dld_best_distance({ list => \@list_utf8 }), 1, 'test dld_best_distance (utf8)');
