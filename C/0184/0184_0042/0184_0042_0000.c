#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01[Struct_NUM] ;
  st02 st02[Struct_NUM] ;

  int i,l ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    st01[l].a = 0 ;
    st02[l].b = 1 ;
    st02[l].c = 1 ;
  }

  for_test(st01,st02,Struct_NUM) ;

  int result ;
  result = 0 ;
  for ( l = 0 ; l < Struct_NUM ; l++ )
  {
    result += st01[l].a ;
  }

  if (result == EXPECTED_VALUE) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

   return 0;
}
