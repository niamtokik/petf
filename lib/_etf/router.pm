######################################################################                           
#                                               
######################################################################                           
package _etf::router;                         
use strict;
use warnings;

sub new {                                     
  my $class = shift();                        
  my $self = { };                             
  bless($self, $class);                       
  return $self;                               
}                                             

sub table {
  my $self = shift();
  return {  70 => "new_float_ext" 
         ,  77 => "bit_binary_ext" 
         ,  82 => "atom_cache_ref"
         ,  97 => "small_integer"
         ,  98 => "integer_ext"
         ,  99 => "float_ext" 
         , 100 => "atom_ext"
         , 101 => "reference_ext" 
         , 102 => "port_ext" 
         , 103 => "pid_ext" 
         , 104 => "small_tuple_ext" 
         , 105 => "large_tuple_ext" 
         , 106 => "nil_ext" 
         , 107 => "string_ext" 
         , 108 => "list_ext" 
         , 109 => "binary_ext" 
         , 110 => "small_big_ext" 
         , 111 => "long_big_ext" 
         , 112 => "new_fun_ext" 
         , 113 => "export_ext" 
         , 114 => "new_reference_ext" 
         , 115 => "small_atom_ext"
         , 116 => "map_ext" 
         , 117 => "fun_ext" 
         , 118 => "atom_utf8_ext" 
         , 119 => "small_atom_utf8_ext" 
         };
}

sub table_reverse {
  my $self = shift();
  return { reverse %{ $self->table() } }; 
} 

1;
