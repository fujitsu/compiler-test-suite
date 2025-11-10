#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01), 
              st02 (* restrict st02) )
{
  int i,j ;
  for ( i = 0 ; i < Loop_MAX ; i++ ) 
  {
    for ( j = 0 ; j < Loop_MAX ; j++ ) 
    {
       st01->a[i][j] = 1 ;
    }
  }
}
