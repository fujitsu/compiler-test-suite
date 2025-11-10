#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01),
              st02 (* restrict st02),
              int n                 )
{
  int i ;
  for ( i = 0 ; i < n ; i++ ) 
  {
     st01[i].a = st02[i].b + st02[i].c ;
  }
}
