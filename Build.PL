use strict;
use warnings;

require "./GeocacheBuild.pm";
my $builder = GeocacheBuild->builder;
$builder->create_build_script();
