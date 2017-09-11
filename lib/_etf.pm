######################################################################
#
######################################################################
package _etf;
use strict;
use warnings;

sub debug {
  my $format = shift;
  printf(STDERR "debug: ".$format."\n", @_);
}

1;
