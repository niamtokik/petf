use strict;
use warnings;
use Test::Simple tests => 6;
use _etf::term::small_tuple_ext;

my $obj;
$obj = _etf::term::small_tuple_ext->new();

ok($obj->encode([]) eq "\x68\x00");
ok($obj->encode([1] eq "\x68\x01\x61\x01");
ok($obj->encode([1,[2]]) eq "\x68\x02\x61\x01\x68\x01\x61\x02");

ok($obj->decode("\x68\x00") eq []);
ok($obj->decode("\x68\x01\x61\x01" eq [1]);
ok($obj->decode("\x68\x02\x61\x01\x68\x01\x61\x02") eq [1,[2]]);
