use strict;
use Data::Dumper;

my $data;
while ( <DATA> ) {
	chop;
	my @w = grep { length } split /\|/;
	push @$data, \@w;

}

foreach my $w ( 0 .. 18 ) {
	print $data->[ 0 ]->[ $w ];
}

__DATA__
| t|wi|nd|t |r |or|he|ne| n| p|he|la|be|in| t| m|of|Fi|um|
| d|If| t|. |on|ti| p|Q9|ro|on|es| R|si|na|he|ig|al|th|vi|
|at|lu|ou| p|r |"p|ea|t"|rc|la| p|ne|fo|s | s|lu|th| y|h |
|d |th|"w|d |ho|e |i"|in| y|to|be| f| s|bl|ik| a|ul|s |ou|
| G|y |pl|ma|ee|ck|et|d | y|, |oo|an| s|lu|an|d |k.|e |ou|
|ou|  |ro|  |th|  |um|  | b|  |! |  |wi|  |mi|  | y|Ch|e |
