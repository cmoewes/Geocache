use strict;

use Digest::MD5 qw(md5_hex);
use Data::Dumper;

my $hash_code;

sub pr {
	$hash_code .= join '', @_;
}

# This is all set with the correct encoding and the correct coords.

my $find     = [ qw(4 5 0 3 1 1 4 0 9 3 2 1 2 6 9) ];
my $solution = [];

#             1234567890123456789012345678
my $coords = 'NiCE.tRy_Look-at_tHe_LeTteRs';
my $data;

foreach my $letter ( split //, $coords ) {
	push @$data, [ split //, md5_hex( $letter ) ];
}

print "<h2 style='color:red'>** Not at posted coordinates **</h2><br><br>\n";

print <<TEXT;
<p>After my last puzzle, I wasn't sure I was going to do any more. Everything that could go wrong seemed to go wrong. But I decided to make a list of guidelines to help me when I made my next puzzle. I hope it is helpful to you too.</p>
TEXT

;


my $tick;
my $total_tick;
my $push_tick;
my $last_count = 0;

pr "<table cellpadding=0 cellspacing=0 border=0>\n";
foreach my $line ( @$data ) {
	$tick++;
	pr "\n<tr>";
	pr "<td><span style='font-family: Courier, monospace; font-size: 16px; letter-spacing: .5em'>";
	my $target = shift @$find;

	#	warn $target;
	my $match;
	my $count;
	foreach my $letter ( @$line ) {
		$count++;
		pr "$letter";
		if ( defined $target && !$match ) {
			if ( $target eq $letter ) {
				if ( $count < 3 ) {
					next;
				}
				if ( $count == $last_count ) {
					next;
				}
				if ( $count > 26 ) {
					die "match greater thatn 26 for line $tick number $target";
				}
				else {
					$match      = 1;
					$last_count = $count;
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
	b => [ 'Be prepared to offer some hints.', 'Before you publish, test your geo-checker.' ],
	c => [ 'Check your work as you go.',    'Creative puzzles are always fun to solve.', 'Challenge yourself to find a new idea.' ],

	#	e => [ 'Everything on the page should be a clue.', 'Even a red herring can help.' ],
	f => [ 'Feel free to use some ideas from someone else.', 'Forcing things will not make it better.' ],
	h => [ 'Have someone else check your logic.', 'Help solvers by providing some clues in the puzzle.', 'Hold back on the give-away hint until after the first solve.' ],
	i => [ 'Ignore it if it takes a few days to get solved.', 'Instructions should be easy to follow.', 'If all else fails, ask for some help.' ],
	j => [ 'Jargon and Technical terms can be a good challenge.', 'Just take your time and make sure it is all accurate.' ],

	#	k => [ 'Keep notes.',                              'Know what you want before you start.', 'Keep your process simple.' ],
	#	l => [ 'l',                                        'l' ],
	#	m => [ 'Make up stuff.' ],
	n => [ 'Nice hints will help people to solve your puzzle.', 'Not everone is going to get it.', 'n' ],

	#	o => [ 'Obfuscation is always helpful.', 'Originalality will be rewarded.' ],
	#	p => [ 'Plan out your design.',          'Practice solving it yourself.' ],
	#	q => [ 'q',                              'q' ],
	r => [ 'Recreate the solution from scratch to test it.', 'Relax and enjoy creating your puzzle.', 'r' ],

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
	$text_string =~ s/^(.)/<span style='font-size: 140%'>$1<\/span>/;
	print "<li>$text_string\n";
}

print "\n</ol>";
print $hash_code;
print "<br><br>";

print '<a href="http://geocheck.org/geo_inputchkcoord.php?gid=6109987960ae732-eecf-4c04-a675-def44f0696c3"><img src="http://geocheck.org/geocheck_small.php?gid=6109987960ae732-eecf-4c04-a675-def44f0696c3" title="Check your solution" border="0"></a>';

print "\n<p>Congrats to JJnTJ and SNB for a quick FTF. Now I can add some hints.</p>"