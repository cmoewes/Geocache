use strict;
use warnings;
use File::Spec;
use PPI;
use File::Find::Rule::Perl;
use IO::File;

my @files = File::Find::Rule->perl_module->in( "../lib" );

foreach my $file ( @files ) {
	my $Document  = PPI::Document->new( $file );
	my $pkg       = $Document->find_first( 'PPI::Statement::Package' )->namespace;
	check_file( $pkg );
}

sub check_file {
	my $package = shift;
	
	my $file_name = test_file_name($package);

	my $full_path = File::Spec->catfile( '.', $file_name );
	if ( -e $full_path ) {
		warn 'test file exists: ' . $file_name;
	}
	else {
		warn 'test file does not exist: ' . $file_name;
		make_test($full_path, $package);
	}
}

sub test_file_name{
	my $package = shift;
	
	my $file_name = 'class-' . lc $package;
	$file_name =~ s/::/-/gi;
	$file_name .= '.t';
	return $file_name;
}

sub make_test{
	my $file = shift;
	my $package = shift;
	
	my $test = IO::File->new($file, 'w');
	$test->print(test_file($package));
	$test->close;
}

sub test_file{
	my $package = shift;
	
	return <<__TEST__;
#!/usr/local/bin/perl
# auto-generated test file: $package
use strict;
use warnings;

use Test::More;
use Data::Dumper;

use Log::Log4perl qw(:easy);
Log::Log4perl::easy_init( \$WARN );
use Log::Any::Adapter;
Log::Any::Adapter->set( "Null" );
use Log::Any qw(\$log);

my \$package = "$package";
use_ok(\$package);

# my \$object = new_ok(\$package);

done_testing();

__TEST__
}