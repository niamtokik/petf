######################################################################
#
######################################################################
package _etf::term::atom_ext;
use strict;
use warnings;
use parent '_etf::term';

sub value {
  return 100;
}

sub encode {
  my $self = shift();
  my $data = shift();
  if ($data) {
    my $len = length($data);
    if ($len > 0 && $len < 2**16) {
      return pack("CnA*", $self->value(), $len, $data);
    }
    else {
      die("wrong atom_ext data");
    }
  }
}

sub decode {
  my $self = shift();
  my $data = shift();
  if ($data) {
    my ($t, $l) = unpack("Cn", $data);
    if ($l == 0) {
      die("atom_ext can't have 0 length");
    }
    my ($type, $length, $atom, $rest) = unpack("CnA".$l."a*", $data);
    my $ret = sprintf("%s", $atom);
    if ($rest) {
      return $ret, $rest;
    }
    else {
      return $ret;
    }
  }
}

1;

