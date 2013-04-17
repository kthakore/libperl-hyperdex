use strict;
use warnings;

use Test::More;

use_ok( 'Hyperdex' );
use_ok( 'Hyperclient' );


my $hc = Hyperclient->new( '127.0.0.1', 1928);

done_testing;
