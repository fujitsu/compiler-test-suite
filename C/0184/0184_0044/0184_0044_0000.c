#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01[Struct_NUM][Struct_NUM2] ;
  st02 st02[Struct_NUM][Struct_NUM2] ;

  int i,l,m ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( m = 0 ; m < Struct_NUM2 ; m++ )
    {
      for ( i = 0 ; i < Loop_MAX ; i++ )
      {
        st01[l][m].a[i] = 0 ;
        st02[l][m].b[i] = 1 ;
        st02[l][m].c[i] = 1 ;
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
      for ( i = 0 ; i < Loop_MAX ; i++ )
      {
        result += st01[l][m].a[i] ;
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
