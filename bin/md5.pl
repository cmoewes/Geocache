use strict;

use Digest::MD5 qw(md5_hex);
use Data::Dumper;

# This is all set with the correct encoding and the correct coords.

my $find     = [ qw(4 5 0 3 1 1 4 0 9 3 2 1 2 6 9) ];
my $solution = [];

my $coords = 'NiCe-tRy-UsE-tHe-lEtTers';
my $data;

foreach my $letter ( split //, $coords ) {
	push @$data, [ split //, md5_hex( $letter ) ];
}

print "<h2 style='color:red'>** Not at posted coordinates **</h2><br><br>\n";

#warn scalar( @$data );
#warn scalar( @{ $data->[ 0 ] } );
my $tick;
my $total_tick;

print "<table cellpadding=0 cellspacing=0 border=0>\n";
foreach my $i ( 0 .. scalar( @$data ) - 1 ) {
	print "<tr>";
	print "<td><span style='font-family: \"Courier New\", Courier, monospace; font-size: 16px; letter-spacing: .5em'>";
	for my $j ( 0 .. scalar( @{ $data->[ 0 ] } ) - 1 ) {
		$tick++;
		print $data->[ $i ]->[ $j ];
		if ( scalar @$find && $data->[ $i ]->[ $j ] eq $find->[ 0 ] ) {
			if ( $tick > 26 ) {
				warn Dumper $solution;
				die "tick was to big: " . join( '-', @$find );
			}
			$total_tick += $tick;
			push @{ $solution }, [ $data->[ $i ]->[ $j ], $tick, $total_tick ];
			shift @{ $find };
			$tick = 0;
		}
	}
	print "</span></td>";
	print "\n</tr>";

	#	print "\n";
}
print "</table>";
print "\n";
print "\n";

#use Data::Dumper;
#warn Dumper $solution;

my $letters = [ undef, qw(a b c d e f g h i j k l m n o p q r s t u v w x y z) ];

my $text = {
	e => ['Everything on the page should be a clue.', 'Even a red herring can help.'],
	h => ['Have someone else check your logic.'],
	k => ['Keep notes.', 'Know what you want before you start.', 'Keep your process simple.'],
	m => ['Make up stuff.'],
	n => ['Not everone will get it.', 'Nice hints go a long way.'],
	o => ['Obfuscation is always helpful.','Originalality will be rewarded.'],
	p => ['Plan out your design.', 'Practice solving it yourself.'],
	r => ['Recheck your work.'],
	s => ['Stop when it starts to get too confusing.'],

};

print "<br><h2>WestSideDaddies tips to creating a good puzzle</h2><ol>\n";
foreach my $s ( @{ $solution } ) {
	my $text_string = shift( @{ $text->{ $letters->[ $s->[ 1 ] ] } } ) || die "Missing text for $letters->[ $s->[ 1 ] ]";
	print "<li>$text_string\n";
}

print "</ol>";

#for my $j ( 0 .. scalar( @{ $data->[ 0 ] } ) - 1 ) {
#	foreach my $i ( 0 .. scalar( @$data ) - 1 ) {
#		print $data->[ $i ]->[ $j ];
#	}
#	print "\n";
#}

#while(<DATA>){
#	chop;
#	foreach my $l(split / /, $_){
#		print chr(hex($l));
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
