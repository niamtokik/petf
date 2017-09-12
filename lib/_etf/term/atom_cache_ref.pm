######################################################################
#
######################################################################
package _etf::term::atom_cache_ref;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub value {
  my $self = shift();
  return $self->table_reverse->{"atom_cache_ref"};
}

sub encode {
  my $self = shift();
  my $data = shift();
  return pack("CC", $self->value(), $data);
}

sub decode {
  my $self = shift();
  my $data = shift();
  my ($type, $atom_cache, $rest) = unpack("CCa*");
  if ($rest) {
    return $atom_cache, $rest;
  }
  else {
    return $atom_cache;
  }
}

1;
