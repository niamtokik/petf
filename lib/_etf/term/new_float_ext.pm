######################################################################
#
######################################################################
package _etf::term::new_float_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub encode {
    my $self = shift();
    my $value = shift();
}

sub decode {
    my $self = shift();
    my $data = shift();
    my ($type, $ieee_float) = unpack("Ca8a*", $data);
    if ($rest) {
	return $ieee_float, $rest;
    }
    else {
	return $ieee_float;
    }
}

1;

