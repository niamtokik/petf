# petf - Perl ETF Implementation

This perl module implement Erlang External Term Format (ETF). Here
some information concerning mapping between Erlang Term and Perl:

## High Level Implementation (PerlOO)

A high level implementation was made to made this code portable
accross different platform without compiling it. You can
normaly use this module everywhere.

## Low Level Implementation (C/Perl)

A low level implementation in C was also build from scratch
to speed encoding/decoding.

## ETF support 

| External Term     | Perl Equivalence |
|-------------------|------------------|
| new_float_ext     | number           |
| bit_binary_ext    | array            |
| atom_cache_ref    | string           |
| small_integer     | number           |
| integer_ext       | number           |
| float_ext         | number           |
| atom_ext          | string           |
| reference_ext     | string           |
| port_ext          | string           |
| pid_ext           | string           |
| small_tuple_ext   | array            |
| large_tuple_ext   | array            |
| nil_ext           | undef            |
| string_ext        | string           |
| list_ext          | array            |
| binary_ext        | array            |
| small_big_ext     | -                |
| long_big_ext      | -                |
| new_fun_ext       | -                |
| export_ext        | -                |
| new_reference_ext | string           |
| small_atom_ext    | string           |
| map_ext           | hash             |
| fun_ext           | -                |
| atom_utf8_ext     | string           |
| small_atom_utf8_ext | string         |
