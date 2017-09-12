use strict;
use warnings;
use Test::Simple tests => 6;
use _etf::term::small_atom_ext;

my $obj;

ok($obj->encode("a") eq "");
ok($obj->encode("abc123") eq "");
ok($obj->encode("DOH") eq "");

ok($obj->decode("") eq "a");
ok($obj->decode("") eq "abc123");
ok($obj->decode("") eq "DOH");
