
use WWW::Wikipedia;
use Data::Dumper;

my $wiki = WWW::Wikipedia->new();

my $tick;
while ( <DATA> ) {
	chop;
	next if ( m/^#/ );

	s/\s//gi;
	my $length = length $_;
	my @w = split //, $length;
	print "$w[-1]";
#	print "$_\n===================================================================================================================\n";
#
#	my $result = $wiki->search( "Battle of $_");
#	if ( $result ) {
#		print $result->raw;
#	}
#	print "\n\n";
	$tick++;
}

#warn $tick;
__DATA__
Iuka  
Selma  
Appomattox 
Jonesborough 
#Buckland Mills 
Chattanooga 
#Harpers Ferry
#Paducah
#Manassas
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
