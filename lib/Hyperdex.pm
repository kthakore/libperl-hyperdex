package Hyperdex;
use strict;
use warnings;

use vars qw(@ISA $VERSION @EXPORT @EXPORT_OK);
require Exporter;
require Dynaloader;
our @ISA = qw(Exporter Dynaloader);

our $VERSION = '0.01';

bootstrap Hyperdex;
use base 'Exporter';

1;
