######################################################################
#
######################################################################
package _etf::term;
use strict;
use warnings;
use parent -norequire, '_etf';

sub new {
  my $class = shift();
  my $self = { };
  bless($self, $class);
  return $self;
}

sub my_type {
  my $self = shift();
  my $type = $self;
  $type ~= s/^.*:://;
  return $type;
}

sub encoded_tags {}
sub decoded_tags {}

sub value {
  return -1;
}

sub encode {
  return -1;
}

sub decode {
  return -1;
}

1;
