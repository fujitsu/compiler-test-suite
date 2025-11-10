#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01), st02 (* restrict st02) )
{
  int i ;
  for ( i = 0 ; i < Loop_MAX ; i++ ) 
  {
     st01->a[i] = st02->b[i] - st02->c[i] ;
  }
}
