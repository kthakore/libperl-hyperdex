use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
	module_name => 'Hyperdex',
	license => 'perl',
	dist_version_from => 'lib/Hyperdex.pm',
	dist_abstract => 'Hyperdex client',
	extra_linker_flags => '-lhyperclient'
);

$build->create_build_script;
