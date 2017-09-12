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

1;
