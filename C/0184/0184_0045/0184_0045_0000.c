#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01[Struct_NUM] ;
  st02 st02[Struct_NUM] ;

  int i,l,j ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( i = 0 ; i < Loop_MAX ; i++ )
    {
      for ( j = 0 ; j < Loop_MAX ; j++ )
      {
        st01[l].a[i][j] = 0 ;
        st02[l].b[i][j] = 1 ;
        st02[l].c[i][j] = 1 ;
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
        result += st01[l].a[i][j] ;
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
