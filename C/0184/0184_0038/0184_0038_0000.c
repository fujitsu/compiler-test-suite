#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "000.h"

int main()
{
  st01 st01 ;
  st02 st02 ;

  int i ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    st02.b[i] = 60.0 ;
  }

  for_test(&st01,&st02) ;

  float result ;
  result = 0.0 ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    result += st01.a[i] ;
  }

  if (abs(result - EXPECTED_VALUE) <= 0) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

   return 0;
}
