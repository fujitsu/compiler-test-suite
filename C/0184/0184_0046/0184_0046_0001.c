#include <stdio.h>
#include "000.h"

void for_test(st01 (* restrict st01)[Struct_NUM2][Struct_NUM3],
              st02 (* restrict st02)[Struct_NUM2][Struct_NUM3]
             )
{
  int i,l,m,n ;
  for ( l = 0 ; l < Struct_NUM ; l++ ) 
  {
    for ( m = 0 ; m < Struct_NUM2 ; m++ )
    {
      for ( n = 0 ; n < Struct_NUM3 ; n++ )
      {
        for ( i = 0 ; i < Loop_MAX ; i++ ) 
        {
         st01[l][m][n].a[i] = st02[l][m][n].b[i] + st02[l][m][n].c[i] ;
        }
      }
    }
  }
}
