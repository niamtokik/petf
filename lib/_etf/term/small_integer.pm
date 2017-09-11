######################################################################
#
######################################################################
package _etf::term::small_integer;
use strict;
use warnings;
use parent '_etf::term';

sub value {
  return 97;
}

sub encode {
  my $self = shift();
  my $data = shift();
  $self->debug("%s", $data);

  if ($data) {
    if ($data >= 0 || $data <= 255) {
      return pack("CC", $self->value, $data);
    }
    else {
      die("not valid small_integer");
    }
  }
}

sub decode {
  my $self = shift();
  my $data = shift();
  if ($data) {
    my ($type, $integer, $rest) = unpack("CCa*", $data);
    if ($rest) {
      return $integer, $rest;
    }
    else {
      return $integer;
    }
  }
}

1;

