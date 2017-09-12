######################################################################
#
######################################################################
package _etf::term::float_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub encode {
    my $self = shift();
    my $float = shift();
    my $lfloat = sprintf("%.20e", $float);
    return pack("Ca*", $lfloat);
}
sub decode {
    my $self = shift();
    my $data = shift();
    my ($type, $float, $rest) = unpack("Ca31a*", $data);
    if ($rest) {
	return $float, $rest;
    }
    else {
	return $float;
    }
}

1;

