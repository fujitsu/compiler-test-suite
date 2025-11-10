#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01),
              st02 (* restrict st02)
              )
{
  int i,l,j,k ;
  for ( l = 0 ; l < Struct_NUM ; l++ ) 
  {
    for ( i = 0 ; i < Loop_MAX ; i++ ) 
    {
      for ( j = 0 ; j < Loop_MAX ; j++ )
      {
        for ( k = 0 ; k < Loop_MAX ; k++ )
        {
          st01[l].a[i][j][k] = st02[l].b[i][j][k] + st02[l].c[i][j][k] ;
        }
      }
    }
  }
}
