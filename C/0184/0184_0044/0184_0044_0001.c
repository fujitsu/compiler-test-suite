#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01)[Struct_NUM2],
              st02 (* restrict st02)[Struct_NUM2]
             )
{
  int i,l,m ;
  for ( l = 0 ; l < Struct_NUM ; l++ ) 
  {
    for ( m = 0 ; m < Struct_NUM2 ; m++ )
    {
      for ( i = 0 ; i < Loop_MAX ; i++ ) 
      {
       st01[l][m].a[i] = st02[l][m].b[i] + st02[l][m].c[i] ;
      }
    }
  }
}
