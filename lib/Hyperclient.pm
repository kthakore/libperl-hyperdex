package Hyperclient;
use strict;
use warnings;

use vars qw(@ISA @EXPORT @EXPORT_OK);
require Exporter;
require DynaLoader;
our @ISA = qw(Exporter DynaLoader);

bootstrap Hyperclient;
use base 'Exporter';

1;
