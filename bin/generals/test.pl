#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

warn Dumper @ARGV;



__END__

use XML::Simple;

my $name = shift;

my $data = XMLin('4522452.gpx');



foreach my $key ( keys %{$data->{wpt}} ){
    my $wpt = $data->{wpt}->{$key};
    my $name = lc $wpt->{urlname};
    print "$key\t$name\n";

}
