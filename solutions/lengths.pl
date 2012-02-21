while ( <DATA> ) {
	chop;
	next if ( m/^#/ );
	s/ //gi;
	print;
	print "\t";
	my $foo = length( $_ );
	@doo = split //, $foo;
	print $doo[ -1 ];
	print "\n";
}

__DATA__
Iuka
Selma
Appomattox
Jonesborough
#Buckland Mills
Chattanooga
#Harpers Ferry
#Paducah
Manassas
Atlanta
#Cold Harbor
Decatur
#Lawrence
Allatoona
Cape Girardeau
#Snyder's Bluff
#Fort Wagner
Blue Springs
#Munfordville
#Okolona
Vicksburg
Gettysburg
#Dandridge
Kinston
#Honey Hill
Fort Branch
#Bean's Station
