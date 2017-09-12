######################################################################
#
######################################################################
package _etf::term::nil_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub value {
  my $self = shift();
  return $self->table_reverse->{"nil_ext"};
}

sub encode {
  my $self = shift();
  return pack("C", $self->value());
}

sub decode {
  my $self = shift();
  my $data = shift();
  my ($type, $rest) = unpack("Ca*");
  if ($rest) {
    return 0, $rest;
  }
  else {
    return 0;
  }
}

1;
