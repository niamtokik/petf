######################################################################
#
######################################################################
package _etf::term;
use strict;
use warnings;
use parent '_etf';
use parent '_etf::router';

sub new {
  my $class = shift();
  my $self = { };
  bless($self, $class);
  return $self;
}

sub my_type {
  my $self = shift();
  my $type = $self;
}

sub name {
  my $self = shift();
  my $name = $self;
  $name =~ s!=.*$!!;
  $name =~ s!^.*::!!;
  return $name;
}

sub value {
  my $self = shift();
  my $name = $self->name();
  $self->table_reverse->{ $name };
}

sub encode {
  return -1;
}

sub decode {
  return -1;
}

1;
