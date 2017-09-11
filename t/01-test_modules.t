use strict;
use warnings;
use Test::Simple tests => 14;

my $obj;

use _etf::term::atom_cache_ref;
$obj = _etf::term::atom_cache_ref->new();
ok($obj =~ /_etf::term::atom_cache_ref/);

use _etf::term::atom_ext;
$obj = _etf::term::atom_ext->new();
ok($obj =~ /_etf::term::atom_ext/);

use _etf::term::binary_ext;
$obj = _etf::term::binary_ext->new();
ok($obj =~ /_etf::term::binary_ext/);

use _etf::term::bit_binary_ext;
$obj = _etf::term::bit_binary_ext->new();
ok($obj =~ /_etf::term::bit_binary_ext/);

use _etf::term::float_ext;
$obj = _etf::term::float_ext->new();
ok($obj);

use _etf::term::integer_ext;
$obj = _etf::term::integer_ext->new();
ok($obj);

use _etf::term::large_tuple_ext;
$obj = _etf::term::large_tuple_ext->new();
ok($obj);

use _etf::term::list_ext;
$obj = _etf::term::list_ext->new();
ok($obj);

use _etf::term::new_float_ext;
$obj = _etf::term::new_float_ext->new();
ok($obj);

use _etf::term::nil_ext;
$obj = _etf::term::nil_ext->new();
ok($obj);

use _etf::term::small_atom_ext;
$obj = _etf::term::small_atom_ext->new();
ok($obj);

use _etf::term::small_integer;
$obj = _etf::term::small_integer->new();
ok($obj);

use _etf::term::small_tuple_ext;
$obj = _etf::term::small_tuple_ext->new();
ok($obj);

use _etf::term::string_ext;
$obj = _etf::term::string_ext->new();
ok($obj);

