use strict;
use warnings;

require "./NCTBuild.pm";
my $builder = NCTBuild->builder;
$builder->create_build_script();
