use strict;
use warnings;

use Test::More;

use_ok( 'Hyperdex' );
use_ok( 'Hyperclient' );


my $hc = Hyperclient->new( '127.0.0.1', 1928);

$hc->add_space( 'space phonebook 
key username
attributes first, last, int phone
subspace first, last, phone
create 8 partitions
tolerate 2 failures
' );


$hc->rm_space( 'phonebook' );


done_testing;
