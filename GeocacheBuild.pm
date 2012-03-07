package GeocacheBuild;

use Module::Build;

sub builder {
	return Module::Build->new(
		module_name       => 'Geocache',
		license           => 'perl',
		dist_abstract     => 'Geocache',
		dist_author       => q{Chris Moewes-Bystrom <chris.moewes@gmail.com>},
		dist_version_from => 'lib/Geocache.pm',
		build_requires    => { 'Test::More' => 0, },
		requires          => {
			'Moose'                        => 0,
			'Moose::Role'                  => 0,
			'Moose::Util::TypeConstraints' => 0,
			'MooseX::Singleton'            => 0,
			'namespace::autoclean'         => 0,
			'Params::Validate'             => 0,
			'Try::Tiny'                    => 0,
			'XML::Simple'                  => 0,
		},
		add_to_cleanup     => [ 'Geocache-*' ],
		create_makefile_pl => 'traditional',
	);
}

1;
