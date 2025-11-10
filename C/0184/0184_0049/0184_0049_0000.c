#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01 ;
  st02 st02 ;
  st03 st03 ;

  int i ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    st01.a[i] = 0 ;
    st02.b[i] = 1 ;
    st03.c[i] = 1 ;
    st01.d[i] = 0 ;
    st02.e[i] = 1 ;
    st03.f[i] = 1 ;
  }

  for_test(&st01,&st02,&st03) ;

  int result ;
  result = 0 ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    result += st01.a[i] ;
  }

  if (result == EXPECTED_VALUE) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

   return 0;
}
