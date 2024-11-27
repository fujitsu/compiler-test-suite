#include <stdio.h>
struct mems {
  int upper ;
  int lower[15] ;
  char last_one_byte ;
} ;

int foo( struct mems *p, struct mems ar ) {

  if ( p->upper == 0 )
    return p->upper ;

  *p=ar ; 

  return p->upper == 3 ;

}
int main() {
  struct mems pa, ara ;
  pa.upper=2 ;
  ara.upper=3 ;

  if ( foo( &pa, ara ) )
    puts(" ok") ;
  else
    puts(" ng") ;
}
