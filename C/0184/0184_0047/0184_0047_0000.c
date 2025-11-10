#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01[Struct_NUM] ;
  st02 st02[Struct_NUM] ;

  int i,l,j,k ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( i = 0 ; i < Loop_MAX ; i++ )
    {
      for ( j = 0 ; j < Loop_MAX ; j++ )
      {
        for ( k = 0 ; k < Loop_MAX ; k++ )
        {
          st01[l].a[i][j][k] = 0 ;
          st02[l].b[i][j][k] = 1 ;
          st02[l].c[i][j][k] = 1 ;
        }
      }
    }
  }

  for_test(st01,st02) ;

  int result ;
  result = 0 ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( i = 0 ; i < Loop_MAX ; i++ )
    {
      for ( j = 0 ; j < Loop_MAX ; j++ )
      {
        for ( k = 0 ; k < Loop_MAX ; k++ )
        {
          result += st01[l].a[i][j][k] ;
        }
      }
    }
  }

  if (result == EXPECTED_VALUE) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

   return 0;
}
