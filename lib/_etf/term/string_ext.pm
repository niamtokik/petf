######################################################################
#
######################################################################
package _etf::term::string_ext;
use strict;
use warnings;
use parent '_etf::router';
use parent '_etf::term';

sub encode {
    my $self = shift();
    my $string = shift();
    my $length = length($string);
    return pack("Cna".$length, $self->value, $length, $string);
}

sub decode {
    my $self = shift();
    my $data = shift();
    my ($t, $l) = unpack("Cn", $data);
    my ($type, $length, $string, $rest) = unpack("Cna".$length."a*", $data);
    if ($rest) {
	return $string, $rest;
    }
    else {
	return $string;
    }
}

1;
