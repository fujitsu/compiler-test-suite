#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01),
              st02 (* restrict st02)
              )
{
  int i,l ;
  for ( l = 0 ; l < Struct_NUM ; l++ ) 
  {
    for ( i = 0 ; i < Loop_MAX ; i++ ) 
    {
     st01[l].a[i] = st02[l].b[i] + st02[l].c[i] ;
    }
  }
}
