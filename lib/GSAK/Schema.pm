package GSAK::Schema;

use Moose;

has 'schema' => ( is => 'ro', isa => 'GSAK::Main', lazy_build => 1 );
use GSAK::Main;

sub _build_schema {
	my $self = shift;
	my $dbfile = 'C:\\Users\\cmoewes\\AppData\\Roaming\\gsak\\data\\Default\\sqlite.db3';
	return GSAK::Main->connect( "dbi:SQLite:dbname=$dbfile", "", "" );
}

1;
