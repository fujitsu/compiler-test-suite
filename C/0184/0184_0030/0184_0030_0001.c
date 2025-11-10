#include <stdio.h>
#include <math.h>
#include "000.h"

void for_test(st01 (* restrict st01), st02 (* restrict st02) )
{
  int i ;
  for ( i = 0 ; i < Loop_MAX ; i++ ) 
  {
    st01->a[i] = exp(st02->b[i]) ;
  }

}
