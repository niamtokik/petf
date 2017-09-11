use strict;
use warnings;
use Test::Simple tests => 5;
use _etf::term::string_ext;

my $obj = _etf::term::string_ext->new();

ok($obj->encode("a") eq "\x6b\x00\x01a");
ok($obj->encode("test") eq "\x6b\x00\x04test");
ok($obj->encode("é") eq "\x6b\x00\x01\xe9");

ok($obj->decode("\x6b\x00\x01a") eq "a");
ok($obj->decode("\x6b\x00\x04test") eq "test");
