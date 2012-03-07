package Geocache::Alphabet;

use Moose;

has 'letter_index' => ( is => 'ro', isa => 'HashRef', lazy_build => 1 );
has 'number_index' => ( is => 'ro', isa => 'HashRef', lazy_build => 1 );

use Params::Validate;

sub _build_number_index {
	my $self = shift;
	my $return;
	while ( my ( $k, $v ) = each %{ $self->letter_index } ) {
		push @{ $return->{ $v } }, $k;
	}
	return $return;
}

sub _build_letter_index {
	return {
		a => 1,
		b => 2,
		c => 3,
		d => 4,
		e => 5,
		f => 6,
		g => 7,
		h => 8,
		i => 9,
		j => 0,
		k => 1,
		l => 2,
		m => 3,
		n => 4,
		o => 5,
		p => 6,
		q => 7,
		r => 8,
		s => 9,
		t => 0,
		u => 1,
		v => 2,
		w => 3,
		x => 4,
		y => 5,
		z => 6,
	};
}

sub letter_to_number {
	my $self   = shift;
	my $letter = shift;
	return $self->letter_index->{ $letter };

}

sub number_to_letter {
	my $self   = shift;
	my $number = shift;
	return map { $self->number_index->{ $_ }->[ int( rand( scalar( @{ $self->number_index->{ $_ } } ) ) ) ] } split //, $number;
}
1;
