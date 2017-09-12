######################################################################
#
######################################################################
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub value {
  my $self = shift();
  return $self->table_reverse->{"atom_utf8_ext"};
}

sub encode {
  my $self = shift();
  my $data = shift();
  my $length = length($data);
  return pack("CnU*", $self->value(), $length, $data);
}

sub decode {
  my $self = shift();
  my $data = shift();
  my ($t, $l) = unpack("Cn");
  my ($type, $length, $atom, $rest) = unpack("CnU".$l."a*", $data);
  if ($rest) {
    return $atom, $rest;
  }
  else {
    return $atom;
  }
}

1;
