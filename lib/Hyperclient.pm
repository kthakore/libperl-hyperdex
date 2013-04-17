package Hyperclient;
use strict;
use warnings;

use vars qw(@ISA @EXPORT @EXPORT_OK);
require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);

use base 'Exporter';


use Hyperclient::Constants ':returncode';


our @EXPORT = 	@{ $Hyperclient::Constants::EXPORT_TAGS{returncode} };

our %EXPORT_TAGS = (
	all => \@EXPORT,
	defaults => \@EXPORT
);



bootstrap Hyperclient;

1;
