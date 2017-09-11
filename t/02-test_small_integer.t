use strict;
use warnings;
use Test::Simple tests => 4;
use _etf::term::small_integer;

my $obj = _etf::term::small_integer->new();

ok($obj->encode(0) eq "\x61\x00");
ok($obj->encode(255) eq "\x61\xff");

ok($obj->decode("\x61\x00") == 0 );
ok($obj->decode("\x61\xff") == 255 );
