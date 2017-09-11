######################################################################
#
######################################################################
package _etf::term::new_float_ext;
use strict;
use warnings;
use parent '_etf::term';

sub value {
  return 70;
}

sub encode {
  my $self = shift();
  my $value = shift();
}

1;

