my $data;
use Data::Dumper;

my $VAR1 = {
	'00111' => [ 'U',                '7' ],
	'10001' => [ 'Z',                '"' ],
	'00011' => [ 'A',                '-' ],
	'01000' => [ 'Carriage return',  'Carriage return' ],
	'10100' => [ 'H',                '#' ],
	'11111' => [ '',                 'Shift to letters' ],
	'11010' => [ 'G',                '&' ],
	'10010' => [ 'L',                ')' ],
	'01001' => [ 'D',                '$' ],
	'11011' => [ 'Shift to figures', undef ],
	'00100' => [ ' ',            ' ' ],
	'01101' => [ 'F',                ' !' ],
	'11001' => [ 'B',                ' ?' ],
	'00001' => [ 'E',                '3' ],
	'01110' => [ 'C',                ' :' ],
	'01111' => [ 'K',                '(' ],
	'11100' => [ 'M',                '.' ],
	'00000' => [ '',             '' ],
	'10110' => [ 'P',                '0' ],
	'00010' => [ 'Line feed',        'Line feed' ],
	'10011' => [ 'W',                '2' ],
	'01100' => [ 'N',                ',' ],
	'00101' => [ 'S',                'BELL' ],
	'10000' => [ 'T',                '5' ],
	'10111' => [ 'Q',                '1' ],
	'01011' => [ 'J',                '\'' ],
	'11101' => [ 'X',                '/' ],
	'01010' => [ 'R',                '4' ],
	'11110' => [ 'V',                ' ;' ],
	'11000' => [ 'O',                '9' ],
	'10101' => [ 'Y',                '6' ],
	'00110' => [ 'I',                '8' ]
};

my $tick = 1;

while ( <DATA> ) {
	chop;

	my @w = map { $_ eq 'O' ? 1 : 0 } grep { !m/-/ } split //;
	shift @w;
	pop @w;
	my $string = join q{}, @w;
#	warn $string;
	if($string eq '11111'){
		$tick = 0;
		next;
	}
	if($string eq '11011'){
		$tick = 1;
		next;
	}
	if(!defined $VAR1->{$string}->[$tick]){
		warn $string;
	}
	print $VAR1->{$string}->[$tick];
}

__DATA__
|   -  |
|   -  |
|   -  |
|   -  |
|   -  |
|OOO-OO|
|O  -  |
|O O-  |
|   - O|
|  O-  |
| OO-O |
|   -OO|
| OO-O |
|O O-  |
|   - O|
|  O-  |
|  O-O |
|  O- O|
|  O-  |
|   -OO|
|O  -  |
|  O-  |
| OO-  |
|OO -  |
| O -O |
|O  -  |
|O O-  |
|  O-  |
|OO -OO|
| O -O |
|O  -  |
|  O-  |
|O O-O |
|O O-OO|
|OOO-  |
|O O-O |
|  O-O |
|  O-OO|
|  O-  |
|OOO-OO|
|O  -OO|
|   - O|
|  O- O|
|O  -  |
|  O-  |
|OO -OO|
|O O-O |
|OO -  |
|   - O|
|  O-  |
|O  -OO|
|O O-OO|
|OOO-  |
|O O-O |
|O O-O |
|  O-OO|
|   -  |
|   -  |
|   -  |
|   -  |
|   -  |
