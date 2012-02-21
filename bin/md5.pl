use strict;

use Digest::MD5 qw(md5_hex);
use Data::Dumper;

my $hash_code;

sub pr {
	$hash_code .= join '',  @_;
}

# This is all set with the correct encoding and the correct coords.

my $find     = [ qw(4 5 0 3 1 1 4 0 9 3 2 1 2 6 9) ];
my $solution = [];

#             1234567890123456789012345678
my $coords = 'NiCE-tRy_LoOk-at_tHe_LeTteRs';
my $data;

foreach my $letter ( split //, $coords ) {
	push @$data, [ split //, md5_hex( $letter ) ];
}

print "<h2 style='color:red'>** Not at posted coordinates **</h2><br><br>\n";

my $tick;
my $total_tick;
my $push_tick;

pr "<table cellpadding=0 cellspacing=0 border=0>\n";
foreach my $line ( @$data ) {
	$tick++;
	pr "\n<tr>";
	pr "<td><span style='font-family: \"Courier New\", Courier, monospace; font-size: 16px; letter-spacing: .5em'>";
	my $target = shift @$find;

	#	warn $target;
	my $match;
	my $count;
	foreach my $letter ( @$line ) {
		$count++;
		pr "$letter";
		if ( defined $target && !$match ) {
			if ( $target eq $letter ) {
				if($count < 2){
					next;
				}
				if ( $count > 26 ) {
					die "match greater thatn 26 for line $tick number $target";
				}
				else {
					$match = 1;
					push @{ $solution }, [ $letter, $count ];
					$push_tick++;
				}
			}
		}
	}
	if ( defined $target && !defined $match ) {
		die "no match for line $tick number $target";
	}
	pr "</span></td>\n";
	pr "\n</tr>";
}


pr "</table>";
pr "\n";
pr "\n";

#use Data::Dumper;
#warn Dumper $solution;

my $letters = [ undef, qw(a b c d e f g h i j k l m n o p q r s t u v w x y z) ];

my $text = {
	a => [ 'Always provide a geo-checker.', 'Avoid overly clever ideas.' ],
	b => [ 'Be prepared to offer some hints.' ],
	c => [ 'Check your work as you go.',              'Creative puzzles are alway fun to solve.' ],

	#	e => [ 'Everything on the page should be a clue.', 'Even a red herring can help.' ],
	f => [ 'Feel free to use some ideas from someone else.' ],
	h => [ 'Have someone else check your logic.', 'Help solvers by providing some clues in the puzzle.', 'Hold back on the give-away hint until after the first solve.' ],
	i => [ 'Ignore it if it takes a few days to get solved.', 'Instructions should be easy to follow.', 'i' ],
	j => [ 'Jargon and Technical terms can be a good challenge.', 'j' ],

	#	k => [ 'Keep notes.',                              'Know what you want before you start.', 'Keep your process simple.' ],
	#	l => [ 'l',                                        'l' ],
	#	m => [ 'Make up stuff.' ],
	n => [ 'Nice hints go a long way.', 'Not everone will get it.', 'n' ],

	#	o => [ 'Obfuscation is always helpful.', 'Originalality will be rewarded.' ],
	#	p => [ 'Plan out your design.',          'Practice solving it yourself.' ],
	#	q => [ 'q',                              'q' ],
	r => [ 'Recreate the solution from scratch.', 'Relax and enjoy creating your puzzle.', 'r' ],

	#	s => [ 'Stop when it starts to get too confusing.' ],
	#	t => [ 't', 't' ],
	#	u => [ 'u', 'u', 'u', 'u' ],
	#	w => [ 'w', 'w' ],
	#	x => [ 'x' ],
	#	z => [ 'z', 'z', 'z' ],
	#	v => [ 'v' ],

};

print "<br><h2>WestSideDaddies tips to creating a good puzzle</h2>\n<br><ol>\n";
foreach my $s ( @{ $solution } ) {
	my $text_string = shift( @{ $text->{ $letters->[ $s->[ 1 ] ] } } );
	if ( !defined $text_string || length $text_string == 1 ) {
		die "Missing text for  $letters->[$s->[ 1 ]] ";
	}
	print "<li>$text_string\n";
}

print "\n</ol>";
print $hash_code;
print "<br><br>";

print '<a href="http://geocheck.org/geo_inputchkcoord.php?gid=6109987960ae732-eecf-4c04-a675-def44f0696c3"><img src="http://geocheck.org/geocheck_small.php?gid=6109987960ae732-eecf-4c04-a675-def44f0696c3" title="Check your solution" border="0"></a>';



#for my $j ( 0 .. scalar( @{ $data->[ 0 ] } ) - 1 ) {
#	foreach my $i ( 0 .. scalar( @$data ) - 1 ) {
#		pr $data->[ $i ]->[ $j ];
#	}
#	pr "\n";
#}

#while(<DATA>){
#	chop;
#	foreach my $l(split / /, $_){
#		pr chr(hex($l));
#
#	}
#}

__DATA__
53 6f 72 72
79 2c 20 77 72
6f 6e 67 20 63 6f 64 65 2e 20
20
54 72
79 20 61 67 61
69 6e 2e 20 20 54 68 61 6e 6b
20 79 6f 75 20 66 6f 72 20
74 72 79
69
6e 67 20 43 61 6d 64 65 6e
20
4c 69 67 68 74 20 61 6e
64 20 50 6f 77 65 72 2e 20 20
