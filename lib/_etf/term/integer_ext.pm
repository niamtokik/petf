######################################################################
#
######################################################################
package _etf::term::integer_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub encode {
  my $self = shift();
  my $data = shift();
  if ($data) {
    return pack("CN", $self->value, $data);
  }
}

sub decode {
  my $self = shift();
  my $data = shift();
  if ($data) {
    my ($type, $integer, $rest) = unpack("CNa*", $data);
    if ($rest) {
      return $integer, $rest;
    }
    else {
      return $integer;
    }
  }
}

1;

