######################################################################
#
######################################################################
package _etf::term::small_tuple_ext;
use strict;
use warnings;
use parent -norequire, '_etf::term';

sub value {
  return 104;
}

sub encode {
  my $self = shift();
  my $data = shift();
  if ($data && ref($data) eq "ARRAY") {
    my $len = @$data;
    my $buf = "";
    foreach my $d (@$data) {
      # router here
    }
  }
}

sub decode {
  my $self = shift();
  my $data = shift();
  my @buffer = ();
  if ($data) {
    my ($type,$elements,$rest) = unpack("CCa*", $data);
  }
}

1;

