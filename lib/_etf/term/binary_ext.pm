######################################################################
#
######################################################################
package _etf::term::binary_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub value {
  my $self = shift();
  return $self->table_reverse->{"binary_ext"};
}

sub encode {
  my $self = shift();
}

sub decode {
  my $self = shift();
}

1;
