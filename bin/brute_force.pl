use strict;
use DBI;
use Data::Dumper;

my $dbfile = 'C:\\Users\\cmoewes\\AppData\\Roaming\\gsak\\data\\Default\\sqlite.db3';

my $dbh = DBI->connect( "dbi:SQLite:dbname=$dbfile", "", "" );

my $sth = $dbh->prepare( "SELECT * FROM logs WHERE lParent = 'GC1Z3PN'" );

$sth->execute;

while ( my $row = $sth->fetchrow_hashref ) {
	my $sth2 = $dbh->prepare( "SELECT lParent FROM logs where lBy = '$row->{lBy}' AND lDate = '$row->{lDate}'" );
	$sth2->execute;
	my $rows = $sth2->fetchall_arrayref;
	if(scalar @$rows < 2){
		next;
	}
	print "===================================================================================\n";
	print scalar (@$rows) . "\n";
	print 'code in (' . join ',', map { '"' . $_->[0] . '"' } @$rows;
	print ")\n";
}

