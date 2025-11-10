#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01[Struct_NUM] ;
  st02 st02[Struct_NUM] ;

  int i,l ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( i = 0 ; i < Loop_MAX ; i++ )
    {
      st01[l].a[i] = 0 ;
      st02[l].b[i] = 1 ;
      st02[l].c[i] = 1 ;
    }
  }

  for_test(st01,st02) ;

  int result ;
  result = 0 ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    for ( i = 0 ; i < Loop_MAX ; i++ )
    {
      result += st01[l].a[i] ;
    }
  }

  if (result == EXPECTED_VALUE) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

   return 0;
}
