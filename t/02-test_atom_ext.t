use strict;
use warnings;
use Test::Simple tests => 8;
use _etf::term::atom_ext;

my $obj = _etf::term::atom_ext->new();

# encode
ok($obj->encode("a") eq "\x64\x00\x01a");
ok($obj->encode("az") eq "\x64\x00\x02az");
ok($obj->encode("DOH") eq "\x64\x00\x03DOH");
ok($obj->encode("test") eq "\x64\x00\x04test");

# decode
ok($obj->decode("\x64\x00\x01a") eq "a");
ok($obj->decode("\x64\x00\x03DOH") eq "DOH");
ok($obj->decode("\x64\x00\x02az") eq "az");
ok($obj->decode("\x64\x00\x04test") eq "test");
