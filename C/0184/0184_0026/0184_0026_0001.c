#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01), st02 (* restrict st02) )
{
  int i ;
  for ( i = 1 ; i < Loop_MAX + 1 ; i++ ) 
  {
     st01->a[i-1] = st02->b[i-1] + st02->c[i-1] ;
  }
}
