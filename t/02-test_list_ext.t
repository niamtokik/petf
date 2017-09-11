use strict;
use warnings;
use Test::Simple;
use _etf::term::list_ext;

my $obj = _etf::term::list_ext->new();

ok($obj->encode([]) eq "\x6a");
ok($obj->encode([1,2,3]) eq "\x107\x00\x03\x01\x02\x03");

