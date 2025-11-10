#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01[Struct_NUM][Struct_NUM2][Struct_NUM3] ;
  st02 st02[Struct_NUM][Struct_NUM2][Struct_NUM3] ;

  int i,l,m,n ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( m = 0 ; m < Struct_NUM2 ; m++ )
    {
      for ( n = 0 ; n < Struct_NUM3 ; n++ )
      {
        for ( i = 0 ; i < Loop_MAX ; i++ )
        {
          st01[l][m][n].a[i] = 0 ;
          st02[l][m][n].b[i] = 1 ;
          st02[l][m][n].c[i] = 1 ;
        }
      }
    }
  }

  for_test(st01,st02) ;

  int result ;
  result = 0 ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( m = 0 ; m < Struct_NUM2 ; m++ )
    {
      for ( n = 0 ; n < Struct_NUM3 ; n++ )
      {
        for ( i = 0 ; i < Loop_MAX ; i++ )
        {
          result += st01[l][m][n].a[i] ;
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
