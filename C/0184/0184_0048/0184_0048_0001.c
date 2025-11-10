#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01),
              st02 (* restrict st02),
              st03 (* restrict st03) )
{
  int i ;
  for ( i = 0 ; i < Loop_MAX ; i++ ) 
  {
     st01->a[i] = st02->b[i] + st03->c[i] ;
     st01->d[i] = st02->e[i] + st03->f[i] ;
  }
}
