######################################################################
#
######################################################################
package _etf::term::small_atom_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub encode {
  my $self = shift();
  my $data = shift();
  my $length = length($data);
  return pack("CCa*", $self->value(), $length, $data);
}

sub decode {
  my $self = shift();
  my $data = shift();
}

1;

